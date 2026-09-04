.class Lcom/metamoji/noteanytime/EditorTurnPage;
.super Ljava/lang/Object;
.source "EditorTurnPage.java"

# interfaces
.implements Lcom/metamoji/df/sprite/TurnOverMediator;


# instance fields
.field private editor:Lcom/metamoji/noteanytime/EditorActivity;


# direct methods
.method static bridge synthetic -$$Nest$mhas_next_page(Lcom/metamoji/noteanytime/EditorTurnPage;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorTurnPage;->has_next_page()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhas_prev_page(Lcom/metamoji/noteanytime/EditorTurnPage;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorTurnPage;->has_prev_page()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    .line 25
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    .line 26
    invoke-static {v1, v0}, Lcom/metamoji/df/sprite/Glimpse;->setGlimpseMargin(FF)V

    return-void
.end method

.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorTurnPage;->editor:Lcom/metamoji/noteanytime/EditorActivity;

    return-void
.end method

.method private static blobToBitmap(Lcom/metamoji/cm/Blob;)Landroid/graphics/Bitmap;
    .locals 2

    .line 154
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0}, Lcom/metamoji/cm/Size;-><init>()V

    const/4 v1, 0x0

    .line 155
    invoke-static {p0, v1, v1, v0}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorTurnPage;->editor:Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private get_thumb(Lcom/metamoji/df/sprite/ThumbnailRequest;)Landroid/graphics/Bitmap;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorTurnPage;->editor:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v1

    .line 127
    invoke-interface {p1}, Lcom/metamoji/df/sprite/ThumbnailRequest;->relativeIndex()I

    move-result p1

    add-int/2addr v1, p1

    .line 129
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 137
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 145
    invoke-static {p1}, Lcom/metamoji/noteanytime/EditorTurnPage;->blobToBitmap(Lcom/metamoji/cm/Blob;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private has_next_page()Z
    .locals 1

    .line 84
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorTurnPage;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    return v0
.end method

.method private has_prev_page()Z
    .locals 1

    .line 98
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/EditorTurnPage;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    return v0
.end method

.method private isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorTurnPage;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private response_thumb(Lcom/metamoji/df/sprite/ThumbnailRequest;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorTurnPage;->get_thumb(Lcom/metamoji/df/sprite/ThumbnailRequest;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/ThumbnailRequest;->putThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private startTurnPage(ZLjava/lang/Runnable;)V
    .locals 7

    .line 185
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorTurnPage;->editor:Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v4

    .line 186
    invoke-virtual {v4}, Lcom/metamoji/nt/NtNoteController;->getCurrentPageIndex()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    add-int v5, v0, v1

    .line 189
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/noteanytime/EditorTurnPage$1;

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/noteanytime/EditorTurnPage$1;-><init>(Lcom/metamoji/noteanytime/EditorTurnPage;ZLcom/metamoji/nt/NtNoteController;ILjava/lang/Runnable;)V

    const-string p1, "RestoringPage"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, v1, p2, p2}, Lcom/metamoji/cm/CmTaskManager;->cancelAndEnsureRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method


# virtual methods
.method public requestThumbnail(Lcom/metamoji/df/sprite/ThumbnailRequest;)Z
    .locals 2

    .line 54
    invoke-interface {p1}, Lcom/metamoji/df/sprite/ThumbnailRequest;->relativeIndex()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorTurnPage;->has_next_page()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorTurnPage;->response_thumb(Lcom/metamoji/df/sprite/ThumbnailRequest;)V

    return v1

    .line 59
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/ThumbnailRequest;->relativeIndex()I

    move-result v0

    if-gez v0, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/metamoji/noteanytime/EditorTurnPage;->has_prev_page()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorTurnPage;->response_thumb(Lcom/metamoji/df/sprite/ThumbnailRequest;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 65
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/EditorTurnPage;->response_thumb(Lcom/metamoji/df/sprite/ThumbnailRequest;)V

    return v1
.end method

.method public turnOverEnd(ZLjava/lang/Runnable;)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/metamoji/noteanytime/EditorTurnPage;->startTurnPage(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public turnOverStart(Z)V
    .locals 0

    return-void
.end method
