.class Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;
.super Landroid/os/AsyncTask;
.source "LibraryNoteTemplatePartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->updateThumbnail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;

.field final synthetic val$frameSize:I

.field final synthetic val$iconHeight:I

.field final synthetic val$iconWidth:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->this$0:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;

    iput-object p2, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$path:Ljava/lang/String;

    iput p3, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$iconWidth:I

    iput p4, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$iconHeight:I

    iput p5, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$frameSize:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 120
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .line 123
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 125
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$path:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 126
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 127
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, 0x0

    .line 129
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 130
    iget v2, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$iconWidth:I

    add-int v3, v0, v2

    div-int/2addr v3, v2

    .line 131
    iget v2, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$iconHeight:I

    add-int v4, v1, v2

    div-int/2addr v4, v2

    .line 133
    iget-object v2, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->this$0:Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;

    invoke-static {v2}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;->access$000(Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 134
    iget v5, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$iconWidth:I

    .line 135
    iget v6, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$iconHeight:I

    .line 141
    iget v7, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$frameSize:I

    if-le v0, v1, :cond_0

    int-to-float v6, v7

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    mul-float/2addr v6, v1

    float-to-int v6, v6

    goto :goto_0

    :cond_0
    int-to-float v5, v7

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v5, v0

    float-to-int v5, v5

    .line 144
    :goto_0
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 148
    iget-object v0, p0, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;->val$path:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 150
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1$1;-><init>(Lcom/metamoji/ui/library/notetemplate/LibraryNoteTemplatePartView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
