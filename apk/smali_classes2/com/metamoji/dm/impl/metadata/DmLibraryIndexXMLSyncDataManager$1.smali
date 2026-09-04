.class synthetic Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager$1;
.super Ljava/lang/Object;
.source "DmLibraryIndexXMLSyncDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$metamoji$dm$DmLibraryType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/metamoji/dm/DmLibraryType;->values()[Lcom/metamoji/dm/DmLibraryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager$1;->$SwitchMap$com$metamoji$dm$DmLibraryType:[I

    :try_start_0
    sget-object v1, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeItem:Lcom/metamoji/dm/DmLibraryType;

    invoke-virtual {v1}, Lcom/metamoji/dm/DmLibraryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
