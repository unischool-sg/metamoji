.class Lcom/metamoji/forSchool/ui/ScSelectNote$6;
.super Ljava/lang/Object;
.source "ScSelectNote.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/forSchool/ui/ScSelectNote;->downloadThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

.field final synthetic val$currentItem:Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

.field final synthetic val$thumbnail:Landroid/widget/ImageView;

.field final synthetic val$thumbnailPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/forSchool/ui/ScSelectNote;Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Ljava/lang/String;Landroid/widget/ImageView;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1275
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$6;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$6;->val$currentItem:Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$6;->val$thumbnailPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$6;->val$thumbnail:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1278
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$6;->val$currentItem:Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$6;->val$thumbnailPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fput_thumbnailPath(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$6;->val$currentItem:Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;

    invoke-static {v0}, Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;->-$$Nest$fget_thumbnailPath(Lcom/metamoji/forSchool/ui/ScSelectNote$ScSelectNoteItem;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$6;->this$0:Lcom/metamoji/forSchool/ui/ScSelectNote;

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ui/ScSelectNote;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1284
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScSelectNote$6;->val$thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 1285
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method
