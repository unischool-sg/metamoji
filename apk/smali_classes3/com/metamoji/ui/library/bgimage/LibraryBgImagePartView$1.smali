.class Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;
.super Landroid/os/AsyncTask;
.source "LibraryBgImagePartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->initCanvas()V
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
.field final synthetic this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;

.field final synthetic val$frameSize:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;

    iput p2, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->val$frameSize:I

    iput-object p3, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->val$path:Ljava/lang/String;

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

    .line 55
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    .line 58
    iget p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->val$frameSize:I

    .line 60
    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->val$path:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 65
    :goto_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-nez v0, :cond_5

    .line 67
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 68
    iget-object v4, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->val$path:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 69
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 70
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v4, :cond_4

    if-nez v5, :cond_2

    goto :goto_2

    .line 81
    :cond_2
    iget v6, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->val$frameSize:I

    if-le v4, v5, :cond_3

    int-to-float v6, v6

    int-to-float v7, v5

    int-to-float v8, v4

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_3

    :cond_3
    int-to-float v6, v6

    int-to-float v7, v4

    int-to-float v8, v5

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v9, v6

    move v6, p1

    move p1, v9

    goto :goto_3

    :cond_4
    :goto_2
    move v6, p1

    move v0, v2

    goto :goto_3

    :cond_5
    move v6, p1

    move v4, v1

    move v5, v4

    .line 87
    :goto_3
    iget-object v7, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;

    sget v8, Lcom/metamoji/noteanytime/R$id;->image_library_thumbnail:I

    invoke-virtual {v7, v8}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {v7, v8}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->access$002(Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 88
    iget-object v7, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;

    invoke-static {v7}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->access$100(Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 89
    iput p1, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    iput v6, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_6

    .line 93
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    add-int/2addr v4, p1

    sub-int/2addr v4, v2

    .line 94
    div-int/2addr v4, p1

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    .line 95
    div-int/2addr v5, v6

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 97
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->val$path:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 99
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1$1;-><init>(Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :catch_0
    :cond_6
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;

    sget v0, Lcom/metamoji/noteanytime/R$id;->image_library_thumbnail_layout:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 112
    :try_start_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1$2;-><init>(Lcom/metamoji/ui/library/bgimage/LibraryBgImagePartView$1;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method
