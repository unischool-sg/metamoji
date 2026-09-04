.class Lcom/metamoji/nt/NtEditorWindowController$22;
.super Ljava/lang/Object;
.source "NtEditorWindowController.java"

# interfaces
.implements Lcom/metamoji/nt/NtEditorWindowController$ISelectTargetPagesCallBackBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtEditorWindowController;->paperBackSettingsDone(Lcom/metamoji/ui/UiPaperSettingsParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtEditorWindowController;

.field final synthetic val$param:Lcom/metamoji/ui/UiPaperSettingsParam;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/ui/UiPaperSettingsParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3123
    iput-object p1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    iput-object p2, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 3126
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 3127
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    .line 3129
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getBackgroundImageParams()Lcom/metamoji/nt/NtPageController$BGImageParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3131
    new-instance v0, Lcom/metamoji/nt/NtEditorWindowController$22$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtEditorWindowController$22$1;-><init>(Lcom/metamoji/nt/NtEditorWindowController$22;)V

    .line 3143
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    .line 3144
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v1, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    .line 3145
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    invoke-static {v1}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapShortSideSize(Z)I

    move-result v1

    .line 3146
    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    invoke-static {v4}, Lcom/metamoji/df/controller/AttachmentsManager;->getBitmapLongSideSize(Z)I

    move-result v4

    .line 3147
    iget-object v5, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget v5, v5, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    const/16 v6, 0x50

    const/16 v7, 0x32

    const/16 v8, 0x64

    if-lez v5, :cond_4

    .line 3148
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v1}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v4, Lcom/metamoji/ui/dialog/PaperBackgroundPreset;->imgid:[I

    iget-object v5, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget v5, v5, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3150
    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    if-eqz v4, :cond_2

    .line 3151
    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    move v8, v6

    .line 3153
    :cond_2
    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    if-eqz v4, :cond_3

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_3
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    invoke-static {v1, v4, v8}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/metamoji/cm/Blob;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    goto/16 :goto_6

    .line 3154
    :cond_4
    iget-object v5, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v5, v5, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    .line 3164
    iget-object v9, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    if-eqz v5, :cond_8

    .line 3155
    iget-object v5, v9, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 3156
    iget-object v9, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-static {v9}, Lcom/metamoji/nt/NtEditorWindowController;->-$$Nest$fget_editorPage(Lcom/metamoji/nt/NtEditorWindowController;)Lcom/metamoji/nt/INtEditor;

    move-result-object v9

    invoke-interface {v9}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v10, v10, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v9, v5, v10}, Lcom/metamoji/cm/ImageUtils;->createImageBlobFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v5

    .line 3157
    invoke-static {v5, v1, v4, v3}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3159
    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    if-eqz v4, :cond_6

    .line 3160
    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v6, v7

    :goto_2
    move v8, v6

    .line 3162
    :cond_6
    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    if-eqz v4, :cond_7

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_3

    :cond_7
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_3
    invoke-static {v1, v4, v8}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/metamoji/cm/Blob;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    .line 3163
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget v1, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageOpacity:F

    goto :goto_7

    .line 3164
    :cond_8
    iget-object v1, v9, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d

    .line 3166
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v1, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    move v6, v7

    :goto_4
    move v8, v6

    .line 3167
    :cond_a
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-object v1, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget-boolean v4, v4, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    if-eqz v4, :cond_b

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_5

    :cond_b
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_5
    invoke-static {v1, v4, v8}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/metamoji/cm/Blob;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    .line 3168
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->val$param:Lcom/metamoji/ui/UiPaperSettingsParam;

    iget v1, v1, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageOpacity:F

    goto :goto_7

    .line 3171
    :cond_c
    iput-object v3, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    :cond_d
    :goto_6
    move v1, v2

    .line 3174
    :goto_7
    iput-object v3, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Color:Ljava/lang/String;

    .line 3175
    iput v2, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->ColorOpacity:F

    .line 3176
    iput v1, v0, Lcom/metamoji/nt/NtPageController$BGImageParams;->Opacity:F

    .line 3177
    iget-object v1, p0, Lcom/metamoji/nt/NtEditorWindowController$22;->this$0:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->setPageStyle(Ljava/util/List;Lcom/metamoji/nt/NtPageController$BGImageParams;)V

    return-void
.end method
