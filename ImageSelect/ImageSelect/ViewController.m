//
//  ViewController.m
//  ImageSelect
//
//  Created by eu on 2015/02/22.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
    UIImagePickerController *ipc;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ipc = [[UIImagePickerController alloc] init];
    ipc.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selectImage:(id)sender {
    // picker 表示
    [self presentViewController: ipc animated:YES completion: nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    // picker から画像を取得する。
    UIImage *selectImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    self.imageView.image = selectImage;
    
    // picker 閉じる
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)save:(id)sender {
    UIImage *image = self.imageView.image;
    NSData *imageData = UIImagePNGRepresentation(image);
    UIImage *pngimage = [UIImage imageWithData:imageData];
    UIImageWriteToSavedPhotosAlbum(pngimage, self, @selector(savingImageIsFinished:didFinishSavingWithError:contextInfo:), nil);
}


// 完了を知らせる
- (void) savingImageIsFinished:(UIImage *)_image didFinishSavingWithError:(NSError *)_error contextInfo:(void *)_contextInfo
{
    NSLog(@"保存完了");
}

@end
