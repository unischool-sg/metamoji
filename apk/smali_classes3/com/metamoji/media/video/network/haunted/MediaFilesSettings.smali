.class public final Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;
.super Lcom/metamoji/df/controller/Settings;
.source "MediaFilesSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u000bJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u000bJ\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0011J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u001a\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u000bH\u0002J\u0018\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000bH\u0002R$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u001b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010\"\u001a\u00020!2\u0006\u0010\u001a\u001a\u00020!8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;",
        "Lcom/metamoji/df/controller/Settings;",
        "manager",
        "Lcom/metamoji/df/controller/SettingsManager;",
        "type",
        "",
        "model",
        "Lcom/metamoji/df/model/IModel;",
        "<init>",
        "(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V",
        "count",
        "",
        "getCurrentIndex",
        "setCurrentIndex",
        "",
        "value",
        "getMediaServerAt",
        "Lcom/metamoji/media/video/VfSettingInfo;",
        "index",
        "updateInfo",
        "settingInfo",
        "mediaServerStyleFromModel",
        "getIntValue",
        "name",
        "defValue",
        "setIntValue",
        "v",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "order",
        "getOrder",
        "()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "setOrder",
        "(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "orderDir",
        "getOrderDir",
        "()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "setOrderDir",
        "(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

.field public static final MODELTYPE:Ljava/lang/String; = "MMJMediaFilesServerSettings"

.field private static final SUBTYPE:Ljava/lang/String; = "MMJMediaFileSettingInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->Companion:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static final buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->Companion:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;->buildInitModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private final getIntValue(Ljava/lang/String;I)I
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method static synthetic getIntValue$default(Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 207
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->getIntValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private final mediaServerStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/media/video/VfSettingInfo;
    .locals 5

    .line 141
    const-string/jumbo v0, "uploadSynchronizeApp"

    new-instance v1, Lcom/metamoji/media/video/VfSettingInfo;

    invoke-direct {v1}, Lcom/metamoji/media/video/VfSettingInfo;-><init>()V

    .line 149
    :try_start_0
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 156
    sget-object p1, Lcom/metamoji/media/video/VfEditionDef;->INSTANCE:Lcom/metamoji/media/video/VfEditionDef;

    invoke-virtual {p1, v1}, Lcom/metamoji/media/video/VfEditionDef;->defaultSettingInfo(Lcom/metamoji/media/video/VfSettingInfo;)V

    .line 157
    invoke-virtual {p0, v1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->updateInfo(Lcom/metamoji/media/video/VfSettingInfo;)V

    return-object v1

    .line 159
    :cond_0
    sget-boolean v2, Lcom/metamoji/noteanytime/ModelInfo;->isMediaFilesNotUsePhotoEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "1"

    if-eqz v2, :cond_2

    .line 160
    :try_start_1
    const-string v2, "notUsePhotoAlbum"

    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 162
    invoke-virtual {v1, v3}, Lcom/metamoji/media/video/VfSettingInfo;->setNotUsePhotoAlbum(Z)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/media/video/VfSettingInfo;->setNotUsePhotoAlbum(Z)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {v1, v3}, Lcom/metamoji/media/video/VfSettingInfo;->setNotUsePhotoAlbum(Z)V

    .line 170
    :goto_0
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/media/video/VfSettingInfo;->setUploadSynchronizeApp(Z)V

    .line 173
    const-string/jumbo v0, "uploadOnIdle"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/media/video/VfSettingInfo;->setUploadOnIdle(Z)V

    .line 176
    const-string/jumbo v0, "uploadOnIdleShareOnly"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/media/video/VfSettingInfo;->setUploadOnIdleShareOnly(Z)V

    .line 179
    const-string v0, "allowCellularAccess"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/metamoji/media/video/VfSettingInfo;->setAllowCellularAccess(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 184
    :catch_0
    invoke-virtual {p0, v1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->updateInfo(Lcom/metamoji/media/video/VfSettingInfo;)V

    return-object v1
.end method

.method private final setIntValue(Ljava/lang/String;I)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final count()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getCurrentIndex()I
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "currentIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getMediaServerAt(I)Lcom/metamoji/media/video/VfSettingInfo;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->count()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 99
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 100
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->mediaServerStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/media/video/VfSettingInfo;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 5

    .line 220
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder$Companion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "listOrder"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4, v1, v2}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->getIntValue$default(Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;Ljava/lang/String;IILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder$Companion;->fromInt(I)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v0

    return-object v0
.end method

.method public final getOrderDir()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 5

    .line 224
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir$Companion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "listOrderDIr"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4, v1, v2}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->getIntValue$default(Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;Ljava/lang/String;IILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir$Companion;->fromInt(I)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object v0

    return-object v0
.end method

.method public final setCurrentIndex(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->count()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "currentIndex"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setOrder(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    const-string v0, "listOrder"

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->getId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public final setOrderDir(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V
    .locals 1

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-string v0, "listOrderDIr"

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->getId()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method public final updateInfo(Lcom/metamoji/media/video/VfSettingInfo;)V
    .locals 5

    const-string/jumbo v0, "settingInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->count()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->Companion:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

    iget-object v1, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "_model"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;->buildInitModel(Lcom/metamoji/df/model/IModel;)V

    .line 115
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 117
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isMediaFilesNotUsePhotoEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "notUsePhotoAlbum"

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v1, :cond_2

    .line 118
    :try_start_1
    invoke-virtual {p1}, Lcom/metamoji/media/video/VfSettingInfo;->getNotUsePhotoAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_2
    invoke-interface {v0, v2, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_1
    const-string/jumbo v1, "uploadSynchronizeApp"

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfSettingInfo;->getUploadSynchronizeApp()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    move-object v2, v4

    :goto_2
    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "uploadOnIdle"

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfSettingInfo;->getUploadOnIdle()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_4
    move-object v2, v4

    :goto_3
    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v1, "uploadOnIdleShareOnly"

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfSettingInfo;->getUploadOnIdleShareOnly()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v3

    goto :goto_4

    :cond_5
    move-object v2, v4

    :goto_4
    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, "allowCellularAccess"

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfSettingInfo;->getAllowCellularAccess()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    move-object v3, v4

    :goto_5
    invoke-interface {v0, v1, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 128
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method
