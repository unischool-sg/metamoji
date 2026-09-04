.class public Lcom/metamoji/ui/library/LibraryConstants;
.super Ljava/lang/Object;
.source "LibraryConstants.java"


# static fields
.field public static IS_OVER_PIGEON:Z = true

.field private static s_instance:Lcom/metamoji/ui/library/LibraryConstants;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/ui/library/LibraryConstants;
    .locals 1

    .line 16
    sget-object v0, Lcom/metamoji/ui/library/LibraryConstants;->s_instance:Lcom/metamoji/ui/library/LibraryConstants;

    if-nez v0, :cond_0

    new-instance v0, Lcom/metamoji/ui/library/LibraryConstants;

    invoke-direct {v0}, Lcom/metamoji/ui/library/LibraryConstants;-><init>()V

    sput-object v0, Lcom/metamoji/ui/library/LibraryConstants;->s_instance:Lcom/metamoji/ui/library/LibraryConstants;

    .line 17
    :cond_0
    sget-object v0, Lcom/metamoji/ui/library/LibraryConstants;->s_instance:Lcom/metamoji/ui/library/LibraryConstants;

    return-object v0
.end method


# virtual methods
.method public hasDownload(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public hasDownload(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 42
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    instance-of v0, p1, Lcom/metamoji/lb/LbConstants$LbPageType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    check-cast p1, Lcom/metamoji/lb/LbConstants$LbPageType;

    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_DOWNLOAD:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public showDownloadStyle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public useStore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
