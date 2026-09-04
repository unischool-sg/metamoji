.class Lcom/metamoji/nt/NtShare$3$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/nt/NtShare$INtShareCreateFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtShare$3;

.field final synthetic val$noteController:Lcom/metamoji/nt/NtNoteController;

.field final synthetic val$pageNoOffset:I

.field final synthetic val$userCount:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$3;IILcom/metamoji/nt/NtNoteController;)V
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

    .line 269
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$3$1;->this$0:Lcom/metamoji/nt/NtShare$3;

    iput p2, p0, Lcom/metamoji/nt/NtShare$3$1;->val$userCount:I

    iput p3, p0, Lcom/metamoji/nt/NtShare$3$1;->val$pageNoOffset:I

    iput-object p4, p0, Lcom/metamoji/nt/NtShare$3$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(Ljava/io/File;I)Ljava/io/File;
    .locals 6

    .line 272
    iget p1, p0, Lcom/metamoji/nt/NtShare$3$1;->val$userCount:I

    rem-int p1, p2, p1

    .line 273
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$3$1;->this$0:Lcom/metamoji/nt/NtShare$3;

    iget v0, v0, Lcom/metamoji/nt/NtShare$3;->val$fromPageIndex:I

    iget v1, p0, Lcom/metamoji/nt/NtShare$3$1;->val$userCount:I

    div-int/2addr p2, v1

    add-int/2addr v0, p2

    .line 276
    iget-object p2, p0, Lcom/metamoji/nt/NtShare$3$1;->this$0:Lcom/metamoji/nt/NtShare$3;

    iget-object p2, p2, Lcom/metamoji/nt/NtShare$3;->val$userInfos:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 277
    const-string/jumbo v1, "userId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    const-string v2, "nickname"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 285
    :cond_0
    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 287
    iget-object v3, p0, Lcom/metamoji/nt/NtShare$3$1;->this$0:Lcom/metamoji/nt/NtShare$3;

    iget-object v3, v3, Lcom/metamoji/nt/NtShare$3;->val$doc:Lcom/metamoji/nt/NtDocument;

    invoke-static {p2}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 288
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 289
    :cond_1
    const-string/jumbo p2, "unknown"

    .line 291
    :cond_2
    iget v3, p0, Lcom/metamoji/nt/NtShare$3$1;->val$pageNoOffset:I

    add-int/2addr v3, v0

    .line 293
    iget-object v4, p0, Lcom/metamoji/nt/NtShare$3$1;->val$noteController:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v4, v0}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez p1, :cond_3

    .line 297
    iget-object v4, p0, Lcom/metamoji/nt/NtShare$3$1;->this$0:Lcom/metamoji/nt/NtShare$3;

    iget-object v4, v4, Lcom/metamoji/nt/NtShare$3;->val$purgeableChecker:Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;

    invoke-virtual {v4, v0}, Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;->setUnpurgeablePageController(Lcom/metamoji/df/controller/DfPageController;)V

    .line 299
    :cond_3
    iget-object v4, p0, Lcom/metamoji/nt/NtShare$3$1;->this$0:Lcom/metamoji/nt/NtShare$3;

    iget v4, v4, Lcom/metamoji/nt/NtShare$3;->val$finalScale:F

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->isPrivate()Z

    move-result v5

    invoke-virtual {v0, v4, v5, v1}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FZLjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    iget v4, p0, Lcom/metamoji/nt/NtShare$3$1;->val$userCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_4

    .line 302
    iget-object p1, p0, Lcom/metamoji/nt/NtShare$3$1;->this$0:Lcom/metamoji/nt/NtShare$3;

    iget-object p1, p1, Lcom/metamoji/nt/NtShare$3;->val$purgeableChecker:Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;->setUnpurgeablePageController(Lcom/metamoji/df/controller/DfPageController;)V

    .line 303
    invoke-virtual {v0, v0}, Lcom/metamoji/nt/NtPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object p1

    .line 304
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    :cond_4
    if-nez v1, :cond_5

    return-object v2

    .line 309
    :cond_5
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v1, p1}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object p1

    .line 310
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 312
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%s-%d.jpg"

    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 313
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/nt/NtShare;->getTempFolder()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmUtils;->saveBufferToFile(Ljava/io/File;[B)Z

    move-result p1

    if-nez p1, :cond_6

    return-object v2

    :cond_6
    return-object v0
.end method
