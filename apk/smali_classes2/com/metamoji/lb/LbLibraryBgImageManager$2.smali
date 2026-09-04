.class synthetic Lcom/metamoji/lb/LbLibraryBgImageManager$2;
.super Ljava/lang/Object;
.source "LbLibraryBgImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lb/LbLibraryBgImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 218
    invoke-static {}, Lcom/metamoji/lb/LbConstants$LbPageType;->values()[Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/lb/LbLibraryBgImageManager$2;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
