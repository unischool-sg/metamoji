.class Lcom/metamoji/ui/library/item/LibraryPartView$3;
.super Landroid/os/AsyncTask;
.source "LibraryPartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryPartView;->updateThumbnail(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

.field final synthetic val$iconHeight:I

.field final synthetic val$iconWidth:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$3;->this$0:Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPartView$3;->val$path:Ljava/lang/String;

    iput p3, p0, Lcom/metamoji/ui/library/item/LibraryPartView$3;->val$iconWidth:I

    iput p4, p0, Lcom/metamoji/ui/library/item/LibraryPartView$3;->val$iconHeight:I

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

    .line 204
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPartView$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 207
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPartView$3;->val$path:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 210
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 211
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v3, 0x0

    .line 213
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 214
    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPartView$3;->val$iconWidth:I

    add-int/2addr v1, v3

    sub-int/2addr v1, v0

    div-int/2addr v1, v3

    .line 215
    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPartView$3;->val$iconHeight:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    div-int/2addr v2, v3

    .line 216
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 217
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView$3;->val$path:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 219
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryPartView$3$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/library/item/LibraryPartView$3$1;-><init>(Lcom/metamoji/ui/library/item/LibraryPartView$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
