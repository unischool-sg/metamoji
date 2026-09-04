.class Lcom/metamoji/ui/library/note/LibraryNotePartView$1;
.super Landroid/os/AsyncTask;
.source "LibraryNotePartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/note/LibraryNotePartView;->initCanvas()V
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
.field final synthetic this$0:Lcom/metamoji/ui/library/note/LibraryNotePartView;

.field final synthetic val$frameSize:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/note/LibraryNotePartView;ILjava/lang/String;)V
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

    .line 72
    iput-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->this$0:Lcom/metamoji/ui/library/note/LibraryNotePartView;

    iput p2, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->val$frameSize:I

    iput-object p3, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->val$path:Ljava/lang/String;

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

    .line 72
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 75
    iget p1, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->val$frameSize:I

    .line 77
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->val$path:Ljava/lang/String;

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

    .line 82
    :goto_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-nez v0, :cond_5

    .line 84
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 85
    iget-object v4, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->val$path:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 86
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 87
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v4, :cond_4

    if-nez v5, :cond_2

    goto :goto_2

    .line 98
    :cond_2
    iget v6, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->val$frameSize:I

    if-le v4, v5, :cond_3

    int-to-float v6, v6

    int-to-float v5, v5

    int-to-float v7, v4

    div-float/2addr v5, v7

    mul-float/2addr v6, v5

    float-to-int v5, v6

    goto :goto_3

    :cond_3
    int-to-float v6, v6

    int-to-float v7, v4

    int-to-float v5, v5

    div-float/2addr v7, v5

    mul-float/2addr v6, v7

    float-to-int v5, v6

    move v8, v5

    move v5, p1

    move p1, v8

    goto :goto_3

    :cond_4
    :goto_2
    move v5, p1

    move v0, v2

    goto :goto_3

    :cond_5
    move v5, p1

    move v4, v1

    .line 104
    :goto_3
    iget-object v6, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->this$0:Lcom/metamoji/ui/library/note/LibraryNotePartView;

    sget v7, Lcom/metamoji/noteanytime/R$id;->image_library_thumbnail:I

    invoke-virtual {v6, v7}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-static {v6, v7}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->access$002(Lcom/metamoji/ui/library/note/LibraryNotePartView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 105
    iget-object v6, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->this$0:Lcom/metamoji/ui/library/note/LibraryNotePartView;

    invoke-static {v6}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->access$100(Lcom/metamoji/ui/library/note/LibraryNotePartView;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 106
    iput p1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v0, :cond_7

    .line 110
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 111
    iget-object v0, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x4

    if-le v4, v1, :cond_6

    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v3, v5, 0x2

    .line 113
    invoke-static {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    :cond_6
    invoke-static {v0, p1, v5, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 117
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/note/LibraryNotePartView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/library/note/LibraryNotePartView$1$1;-><init>(Lcom/metamoji/ui/library/note/LibraryNotePartView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :catch_0
    :cond_7
    iget-object p1, p0, Lcom/metamoji/ui/library/note/LibraryNotePartView$1;->this$0:Lcom/metamoji/ui/library/note/LibraryNotePartView;

    sget v0, Lcom/metamoji/noteanytime/R$id;->image_library_thumbnail_layout:I

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/library/note/LibraryNotePartView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 130
    :try_start_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/note/LibraryNotePartView$1$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/library/note/LibraryNotePartView$1$2;-><init>(Lcom/metamoji/ui/library/note/LibraryNotePartView$1;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method
