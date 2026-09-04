.class Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/df/controller/PurgeManager$IPurgeableChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiUserPagePurgeableChecker"
.end annotation


# instance fields
.field private _unpurgeablePageController:Lcom/metamoji/df/controller/DfPageController;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;->_unpurgeablePageController:Lcom/metamoji/df/controller/DfPageController;

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/nt/NtShare-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public isPurgeable(Lcom/metamoji/df/controller/DfPageController;)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;->_unpurgeablePageController:Lcom/metamoji/df/controller/DfPageController;

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setUnpurgeablePageController(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$MultiUserPagePurgeableChecker;->_unpurgeablePageController:Lcom/metamoji/df/controller/DfPageController;

    return-void
.end method
