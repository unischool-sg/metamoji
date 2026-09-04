.class public Lcom/metamoji/nt/NtPageController;
.super Lcom/metamoji/df/controller/DfPageController;
.source "NtPageController.java"

# interfaces
.implements Lcom/metamoji/un/text/IUnTextSettings;
.implements Lcom/metamoji/nt/ICommandProcessor;
.implements Lcom/metamoji/ctold/CtTaggableObject;
.implements Lcom/metamoji/nt/INtController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;,
        Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;,
        Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;,
        Lcom/metamoji/nt/NtPageController$OnViewportSizeChangingHandler;,
        Lcom/metamoji/nt/NtPageController$ModelDef;,
        Lcom/metamoji/nt/NtPageController$NtPageUndoPerformer;,
        Lcom/metamoji/nt/NtPageController$BGImageParams;,
        Lcom/metamoji/nt/NtPageController$CreateModelParams;,
        Lcom/metamoji/nt/NtPageController$SchoolPageTypeValue;
    }
.end annotation


# static fields
.field public static final LAYERID_SUFFIX_FOR_COMMON:Ljava/lang/String; = "_[layer-common]"

.field public static final LAYERID_SUFFIX_FOR_PERSONAL_CLASS:Ljava/lang/String; = "_[layer-forClass]"

.field public static final LAYERID_SUFFIX_FOR_PERSONAL_GROUP:Ljava/lang/String; = "_[layer-forGroup]_"

.field public static final LAYERID_SUFFIX_FOR_PERSONAL_TEMPLATE:Ljava/lang/String; = "_[layer-forPersonalTemplate]"

.field public static final LAYERID_SUFFIX_FOR_PERSONAL_USER:Ljava/lang/String; = "_[layer-forUser]_"

.field public static final LAYERID_SUFFIX_FOR_TEACHER_PERSONAL:Ljava/lang/String; = "_[layer-forTeacherPersonal]_"

.field public static final MIMETYPE_IMAGE_PNG:Ljava/lang/String; = "image/png"

.field public static final MMJNT_MODELPROPVALUE_PAGE_VERSION_1:I = 0x1

.field public static final MMJNT_MODELPROPVALUE_PAGE_VERSION_2:I = 0x2

.field public static final MMJNT_MODELPROPVALUE_PAGE_VERSION_4:I = 0x4

.field public static final MMJNT_MODELPROPVALUE_PAGE_VERSION_LATEST:I = 0x4

.field public static final MMJNT_MODELPROPVALUE_PAGE_VERSION_OLDEST_IN_SUPPORTED:I = 0x1

.field public static final MODELTYPE:Ljava/lang/String; = "$page"

.field public static final MODELTYPE_PAGETHUMBNAIL:Ljava/lang/String; = "pagethumbnail"

.field public static final SUBID_TYPE:Ljava/lang/String; = "page"

.field public static final THUMBNAIL_SCALE:F = 0.5f

.field public static final UNITID_SUFFIX_FOR_PERSONAL_USER:Ljava/lang/String; = "_[unit-forUser]_"

.field public static final UNITID_SUFFIX_FOR_ROOT_DRAW:Ljava/lang/String; = "_[unit]_draw"


# instance fields
.field private _altSprite:Lcom/metamoji/df/sprite/Sprite;

.field private _displayTag:Z

.field private _isOnGettingThumbnail:Z

.field private _isOnPurging:Z

.field private _isOnRestoring:Z

.field private _mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

.field private _personalLayerInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private _tagSprite:Lcom/metamoji/df/sprite/Sprite;

.field private _tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;"
        }
    .end annotation
.end field

.field private _thumbnail_dirtyflag:Z

.field private mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

.field private mOnViewportPositionChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;

.field private mOnViewportSizeChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;

.field private mOnViewportSizeChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangingHandler;

.field private m_formPosData:Lcom/metamoji/un/form/UnFormPositionData;

.field private m_textUnitSettingsModel:Lcom/metamoji/df/model/IModel;

.field private objectListener:Lcom/metamoji/ctold/CtObjectListener;


# direct methods
.method static bridge synthetic -$$Nest$fget_mediaType(Lcom/metamoji/nt/NtPageController;)Lcom/metamoji/df/controller/ControllerContext$MediaType;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtPageController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/DfPageController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPageController;->_isOnGettingThumbnail:Z

    .line 176
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPageController;->_isOnPurging:Z

    .line 177
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPageController;->_isOnRestoring:Z

    .line 181
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPageController;->_thumbnail_dirtyflag:Z

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 183
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController;->m_textUnitSettingsModel:Lcom/metamoji/df/model/IModel;

    .line 2856
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    .line 2857
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;

    .line 2859
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;

    .line 2860
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangingHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/metamoji/nt/NtPageController;)Lcom/metamoji/df/controller/DfDocument;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/metamoji/nt/NtPageController;->_document:Lcom/metamoji/df/controller/DfDocument;

    return-object p0
.end method

.method static synthetic access$100(Lcom/metamoji/nt/NtPageController;)Lcom/metamoji/df/controller/DfDocument;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/metamoji/nt/NtPageController;->_document:Lcom/metamoji/df/controller/DfDocument;

    return-object p0
.end method

.method private addEventHandlersForCollabo()V
    .locals 4

    .line 2866
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2870
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 2872
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2873
    new-instance v1, Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtPageController-IA;)V

    iput-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    .line 2874
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 2875
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEndEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 2876
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 2877
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEndEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 2879
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;

    if-nez v1, :cond_2

    .line 2880
    new-instance v1, Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtPageController-IA;)V

    iput-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;

    .line 2881
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 2884
    :cond_2
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;

    if-nez v1, :cond_3

    .line 2885
    new-instance v1, Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtPageController-IA;)V

    iput-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;

    .line 2886
    new-instance v1, Lcom/metamoji/nt/NtPageController$OnViewportSizeChangingHandler;

    invoke-direct {v1, p0, v2}, Lcom/metamoji/nt/NtPageController$OnViewportSizeChangingHandler;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtPageController-IA;)V

    iput-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangingHandler;

    .line 2887
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 2888
    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangingHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static createNewPageModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/nt/NtPageController$CreateModelParams;)Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 882
    const-string v0, "$page"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 883
    iget v0, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->Version:I

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 884
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageId"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget v0, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->AutoPaper:I

    if-eqz v0, :cond_0

    .line 887
    const-string v0, "autoPaper"

    iget v1, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->AutoPaper:I

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 889
    :cond_0
    const-string v0, "paperWidth"

    iget-wide v1, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperWidth:D

    invoke-interface {p0, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 890
    const-string v0, "paperHeight"

    iget-wide v1, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PaperHeight:D

    invoke-interface {p0, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 891
    const-string v0, "printWidth"

    iget-wide v1, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintWidth:D

    invoke-interface {p0, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 892
    const-string v0, "printHeight"

    iget-wide v1, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->PrintHeight:D

    invoke-interface {p0, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 893
    const-string v0, "dw_lines"

    iget-object v1, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->MarginLines:Ljava/util/List;

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 894
    const-string v0, "currentLayer"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 895
    iget-object v0, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->TextSetting:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    .line 896
    const-string/jumbo v0, "textUnitSettings"

    iget-object v1, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->TextSetting:Lcom/metamoji/df/model/IModel;

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 901
    :cond_1
    iget p1, p1, Lcom/metamoji/nt/NtPageController$CreateModelParams;->SchoolPageType:I

    invoke-static {p1, p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->setSchoolPageType(ILcom/metamoji/df/model/IModel;)V

    return-object p0
.end method

.method private getBackgroundLayer()Lcom/metamoji/nt/NtLayerController;
    .locals 1

    const/4 v0, 0x0

    .line 1839
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    return-object v0
.end method

.method private getBgImageUnit()Lcom/metamoji/un/bgimage/UnBGImageUnit;
    .locals 4

    .line 1929
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getBackgroundLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 1933
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    const-class v2, Lcom/metamoji/un/bgimage/UnBGImageUnit;

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;

    if-eqz v0, :cond_1

    .line 1935
    invoke-virtual {v0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v2

    .line 1936
    const-string v3, "$bgimage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Cannot change background image because this page has non-image background. ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public static getCommonLayerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_[layer-common]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getGridLayer()Lcom/metamoji/nt/NtLayerController;
    .locals 1

    const/4 v0, 0x1

    .line 1846
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    return-object v0
.end method

.method public static getPageIdFromCommonLayerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3905
    const-string v0, "_[layer-common]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3908
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPageIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3916
    const-string v0, "_[layer-forUser]_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 3918
    const-string v0, "_[layer-forGroup]_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    .line 3921
    const-string v0, "_[layer-forClass]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    const/4 v1, 0x0

    .line 3924
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPersonalLayerId(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3968
    :cond_0
    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3965
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdForGroup(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3962
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdForUser(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPersonalLayerIdByGroupId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_[layer-forGroup]_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPersonalLayerIdByUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_[layer-forUser]_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPersonalLayerIdForClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_[layer-forClass]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPersonalLayerIdForGroup(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3997
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    .line 3999
    const-string v0, "group-id"

    invoke-static {p0, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-eqz p0, :cond_2

    .line 4002
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4005
    :cond_1
    invoke-static {p1, p0}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByGroupId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object p2
.end method

.method public static getPersonalLayerIdForUser(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3979
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3983
    :cond_0
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getPersonalTemplateLayerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3292
    const-string v0, "_[layer-forPersonalTemplate]"

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTeacherPersonalLayerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_[layer-forTeacherPersonal]_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTextUnitSettingsModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1779
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hasTextUnitSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1780
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "Settings"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPageController;->m_textUnitSettingsModel:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x1

    .line 1781
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 1783
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->m_textUnitSettingsModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public static getUserIdFromTeacherPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3574
    const-string v0, "_[layer-forTeacherPersonal]_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 3576
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 3935
    const-string v0, "_[layer-forUser]_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 3937
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3940
    :cond_0
    const-string v0, "_[layer-forGroup]_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 3942
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private handlePDFLocation(Lcom/metamoji/cm/CmContext;)V
    .locals 5

    .line 1232
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    .line 1233
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1237
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1242
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getBgImageLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1244
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1245
    const-class v1, Lcom/metamoji/un/pdf/UnPDFUnit;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1246
    check-cast v0, Lcom/metamoji/un/pdf/UnPDFUnit;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    :goto_1
    return-void

    .line 1254
    :cond_3
    invoke-interface {p1}, Lcom/metamoji/nt/INtEditor;->closeDetailWindowAndEnsurePenMode()V

    .line 1256
    new-instance p1, Lcom/metamoji/ui/dialog/PDFLocation;

    invoke-direct {p1}, Lcom/metamoji/ui/dialog/PDFLocation;-><init>()V

    .line 1258
    new-instance v1, Lcom/metamoji/nt/NtPageController$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/metamoji/nt/NtPageController$3;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/ui/dialog/PDFLocation;Lcom/metamoji/un/pdf/UnPDFUnit;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/dialog/PDFLocation;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 1281
    invoke-virtual {v0}, Lcom/metamoji/un/pdf/UnPDFUnit;->pdfSize()Lcom/metamoji/cm/SizeF;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1282
    invoke-virtual {v0, v2}, Lcom/metamoji/un/pdf/UnPDFUnit;->pdfImageWithScale(F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1283
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/ui/dialog/PDFLocation;->setPaperSize(FF)V

    .line 1284
    invoke-virtual {p1, v1}, Lcom/metamoji/ui/dialog/PDFLocation;->setPdfSize(Lcom/metamoji/cm/SizeF;)V

    .line 1285
    invoke-virtual {p1, v2}, Lcom/metamoji/ui/dialog/PDFLocation;->setPdfImage(Landroid/graphics/Bitmap;)V

    .line 1286
    invoke-virtual {v0}, Lcom/metamoji/un/pdf/UnPDFUnit;->offsetX()F

    move-result v1

    invoke-virtual {v0}, Lcom/metamoji/un/pdf/UnPDFUnit;->offsetY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/ui/dialog/PDFLocation;->setOffset(FF)V

    .line 1287
    invoke-virtual {v0}, Lcom/metamoji/un/pdf/UnPDFUnit;->scale()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/dialog/PDFLocation;->setScale(F)V

    .line 1288
    invoke-virtual {v0}, Lcom/metamoji/un/pdf/UnPDFUnit;->orientation()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/PDFLocation;->setOrientation(F)V

    .line 1291
    const-string v0, "PdfLocation"

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/PDFLocation;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method public static isTeacherPlersonalLayer(Ljava/lang/String;)Z
    .locals 1

    .line 3501
    const-string v0, "_[layer-forTeacherPersonal]_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static layerModelForType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 234
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 236
    const-string v0, "layerType"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 240
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private performLayerFromUndoOrRedo(ZLcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 1623
    const-string v0, "removedModel"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1624
    const-string v1, "importedModel"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 1628
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1630
    invoke-virtual {p0, p3}, Lcom/metamoji/nt/NtPageController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtLayerController;

    const/4 p2, 0x0

    .line 1631
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1633
    invoke-static {p1}, Lcom/metamoji/df/controller/DfUtility;->detachChildController(Lcom/metamoji/df/controller/DfController;)V

    .line 1637
    :cond_1
    invoke-interface {p3}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1639
    invoke-interface {p3, p1}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 1644
    invoke-interface {p3, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 1645
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1647
    invoke-virtual {p0, p3}, Lcom/metamoji/nt/NtPageController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtLayerController;

    .line 1648
    invoke-virtual {p1, p1}, Lcom/metamoji/nt/NtLayerController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object p2

    const/4 p3, 0x1

    .line 1649
    invoke-virtual {p2, p3}, Lcom/metamoji/df/controller/ControllerContext;->setIgnoreLayoutFrames(Z)V

    const/4 p3, -0x1

    .line 1650
    invoke-static {v0, p1, p3, p2}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;ILcom/metamoji/df/controller/ControllerContext;)Lcom/metamoji/df/controller/DfController;

    :cond_3
    return-void
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 504
    new-instance v0, Lcom/metamoji/nt/NtPageController$NtPageUndoPerformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtPageController$NtPageUndoPerformer;-><init>(Lcom/metamoji/nt/NtPageController-IA;)V

    .line 506
    const-string v1, "pagebgimageundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 507
    const-string v1, "pagestyleundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 508
    const-string v1, "page.textunit.combine.undo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 509
    const-string v1, "page.textunit.separate.undo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 510
    const-string v1, "page.textunit.converttext.undo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private removeEventHandlersForCollabo()V
    .locals 4

    .line 2896
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 2897
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2898
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 2899
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollEndEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 2900
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 2901
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomEndEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 2902
    iput-object v2, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangedHandler;

    .line 2904
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;

    if-eqz v1, :cond_1

    .line 2905
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportSizeChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 2906
    iput-object v2, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangedHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangedHandler;

    .line 2908
    :cond_1
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;

    if-eqz v1, :cond_2

    .line 2909
    iget-object v1, v0, Lcom/metamoji/nt/NtNoteController;->onViewportScrollChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 2910
    iput-object v2, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportPositionChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportPositionChangingHandler;

    .line 2912
    :cond_2
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangingHandler;

    if-eqz v1, :cond_3

    .line 2913
    iget-object v0, v0, Lcom/metamoji/nt/NtNoteController;->onViewportZoomChangingEventListener:Lcom/metamoji/cm/CmEventListener;

    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangingHandler;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->remove(Ljava/lang/Object;)V

    .line 2914
    iput-object v2, p0, Lcom/metamoji/nt/NtPageController;->mOnViewportSizeChangingHandler:Lcom/metamoji/nt/NtPageController$OnViewportSizeChangingHandler;

    :cond_3
    return-void
.end method

.method private replaceLayerFrom(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/ModelManagerImportContext;Lcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 1506
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 1508
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v1, 0x0

    .line 1509
    const-string v2, "removedModel"

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    .line 1511
    invoke-interface {v0, p1, v3, p3}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 1512
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v5

    .line 1513
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v6

    .line 1516
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1517
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1, v7, p3, v5, v6}, Lcom/metamoji/nt/NtPasteDataUtil;->importAttachments(Lcom/metamoji/df/model/IModel;Ljava/util/List;Lcom/metamoji/df/model/ModelManagerImportContext;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;)Ljava/util/Map;

    move-result-object p1

    const/4 p3, 0x0

    .line 1522
    invoke-static {p3, v5, v6, p1}, Lcom/metamoji/df/controller/AttachmentsManager;->replaceTicket(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)V

    .line 1525
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    .line 1526
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    .line 1529
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1531
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtPageController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtLayerController;

    .line 1532
    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    .line 1533
    invoke-static {p1}, Lcom/metamoji/df/controller/DfUtility;->detachChildController(Lcom/metamoji/df/controller/DfController;)V

    .line 1536
    :cond_0
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 1537
    invoke-interface {p4, v2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    if-eqz p1, :cond_1

    .line 1539
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 1543
    :cond_1
    const-string p1, "importedModel"

    invoke-interface {p4, p1, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1544
    invoke-interface {p2, v4}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 1545
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1547
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtPageController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtLayerController;

    .line 1548
    invoke-virtual {p1, p1}, Lcom/metamoji/nt/NtLayerController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object p2

    .line 1549
    invoke-virtual {p2, v3}, Lcom/metamoji/df/controller/ControllerContext;->setIgnoreLayoutFrames(Z)V

    const/4 p3, -0x1

    .line 1550
    invoke-static {v4, p1, p3, p2}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;ILcom/metamoji/df/controller/ControllerContext;)Lcom/metamoji/df/controller/DfController;

    return-void

    .line 1554
    :cond_2
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1557
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_3

    .line 1558
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtPageController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p3

    check-cast p3, Lcom/metamoji/nt/NtLayerController;

    .line 1559
    invoke-virtual {p3, v1}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object p3

    .line 1560
    invoke-static {p3}, Lcom/metamoji/df/controller/DfUtility;->detachChildController(Lcom/metamoji/df/controller/DfController;)V

    .line 1563
    :cond_3
    invoke-interface {p4, v2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1564
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    :cond_4
    return-void
.end method

.method public static textUnitSettingsModelFromPageModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 1794
    const-string/jumbo v0, "textUnitSettings"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method private textUnitSettingsValueOrDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1749
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hasTextUnitSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->m_textUnitSettingsModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 1755
    const-string/jumbo v0, "textUnitFontFamily"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MMJNtTextSettings"

    const-string v2, "MMJNtDocumentSettings"

    if-eqz v0, :cond_2

    .line 1757
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->getDocumentSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtDocumentSettings;

    .line 1758
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocumentSettings;->getUseSystemTextSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1759
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/IUnTextSettings;

    .line 1762
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextSettings;->getTextUnitFontFamily()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1765
    :cond_2
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->getDocumentSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 1766
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->getUseSystemTextSettings()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1767
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtTextUnitSettings;

    .line 1768
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtTextUnitSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1771
    :cond_3
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtDocumentSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 517
    const-string v0, "pagebgimageundo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 518
    const-string v0, "pagestyleundo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 519
    const-string v0, "page.textunit.combine.undo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 520
    const-string v0, "page.textunit.separate.undo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 521
    const-string v0, "page.textunit.converttext.undo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1736
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hasTextUnitSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->m_textUnitSettingsModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1741
    const-string v0, "MMJNtDocumentSettings"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->getDocumentSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 1742
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtDocumentSettings;->valueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public static visitModelForPageID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 4

    .line 913
    check-cast p1, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    .line 915
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewID:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    move-result-object v1

    const-string v2, "pageId"

    if-ne v0, v1, :cond_1

    .line 917
    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v1

    const-string v3, "page"

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 920
    invoke-interface {p0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 923
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->CollectModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 924
    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 926
    :cond_2
    sget-object p0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->SearchModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    return-void
.end method


# virtual methods
.method public applyFormTemplateFrom(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/df/model/IModel;)V
    .locals 11

    .line 1411
    iget-object p2, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    .line 1412
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    .line 1413
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    .line 1416
    new-instance v2, Lcom/metamoji/df/model/ModelManagerImportContext;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    .line 1422
    const-string/jumbo v0, "system:background"

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtPageController;->layerModelForType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 1423
    iget-object v4, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v4}, Lcom/metamoji/nt/NtPageController;->layerModelForType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1424
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1425
    const-string v5, "$pdf"

    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1426
    const-string/jumbo v5, "template"

    invoke-interface {v4, v5}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 1430
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    const-string v5, "bgl"

    invoke-interface {v4, v5}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 1431
    invoke-direct {p0, v3, v0, v2, v4}, Lcom/metamoji/nt/NtPageController;->replaceLayerFrom(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/ModelManagerImportContext;Lcom/metamoji/df/model/IModel;)V

    .line 1432
    invoke-interface {p3, v5, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1437
    const-string/jumbo v0, "system:form"

    invoke-static {v0, p1}, Lcom/metamoji/nt/NtPageController;->layerModelForType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 1438
    iget-object v4, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v4}, Lcom/metamoji/nt/NtPageController;->layerModelForType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1439
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    const-string v5, "fml"

    invoke-interface {v4, v5}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 1440
    invoke-direct {p0, v3, v0, v2, v4}, Lcom/metamoji/nt/NtPageController;->replaceLayerFrom(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/ModelManagerImportContext;Lcom/metamoji/df/model/IModel;)V

    .line 1441
    invoke-interface {p3, v5, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1444
    const-string/jumbo v0, "textUnitSettings"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 1445
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1448
    const-string v5, "TSO"

    invoke-interface {p3, v5, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_1
    const/4 v4, 0x0

    .line 1450
    iput-object v4, p0, Lcom/metamoji/nt/NtPageController;->m_textUnitSettingsModel:Lcom/metamoji/df/model/IModel;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1453
    invoke-interface {v1, v3, v4, v2}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1454
    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1455
    const-string v0, "TSN"

    invoke-interface {p3, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1459
    :cond_2
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 1463
    :goto_0
    const-string v0, "DLO"

    const-string v1, "dw_lines"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 1465
    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1468
    invoke-interface {p2, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 1469
    const-string p2, "DLN"

    invoke-interface {p3, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    const/4 p2, 0x0

    .line 1473
    invoke-static {p1, p2, v4}, Lcom/metamoji/df/controller/DfPageController;->getPaperSizeFromModel(Lcom/metamoji/df/model/IModel;ZZ)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 1474
    const-string v1, "autoPaper"

    invoke-interface {p1, v1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p2

    const/high16 v1, 0x43520000    # 210.0f

    const/high16 v2, 0x42900000    # 72.0f

    .line 1478
    invoke-static {v1, v2}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-double v5, v3

    const-string v3, "printWidth"

    invoke-interface {p1, v3, v5, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const v3, 0x43948000    # 297.0f

    .line 1479
    invoke-static {v3, v2}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-double v7, v7

    const-string v9, "printHeight"

    invoke-interface {p1, v9, v7, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v7

    if-nez p2, :cond_4

    .line 1481
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double p1, p1, v9

    if-ltz p1, :cond_4

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    cmpg-double p1, p1, v9

    if-gez p1, :cond_7

    .line 1484
    :cond_4
    invoke-static {v1, v2}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-double p1, p1

    .line 1485
    invoke-static {v3, v2}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-double v1, v1

    .line 1486
    iget v3, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    move-wide v5, p1

    goto :goto_1

    :cond_5
    move-wide v5, v1

    .line 1487
    :goto_1
    iget v3, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_6

    move-wide v7, v1

    goto :goto_2

    :cond_6
    move-wide v7, p1

    .line 1490
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result p1

    float-to-double p1, p1

    const-string v1, "PPWO"

    invoke-interface {p3, v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1491
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result p1

    float-to-double p1, p1

    const-string v1, "PPHO"

    invoke-interface {p3, v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1492
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPrintWidth()F

    move-result p1

    float-to-double p1, p1

    const-string v1, "PRWO"

    invoke-interface {p3, v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1493
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPrintHeight()F

    move-result p1

    float-to-double p1, p1

    const-string v1, "PRHO"

    invoke-interface {p3, v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1494
    iget p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double p1, p1

    const-string v1, "PPWN"

    invoke-interface {p3, v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1495
    iget p1, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double p1, p1

    const-string v1, "PPHN"

    invoke-interface {p3, v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1496
    const-string p1, "PRWN"

    invoke-interface {p3, p1, v5, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1497
    const-string p1, "PRHN"

    invoke-interface {p3, p1, v7, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    double-to-float p1, v5

    .line 1499
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setPrintWidth(F)V

    double-to-float p1, v7

    .line 1500
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setPrintHeight(F)V

    .line 1501
    iget p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget p2, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->setPaperSize(FF)V

    .line 1502
    invoke-virtual {p0, v4}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    return-void
.end method

.method applyPasteboardExtras(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4415
    invoke-virtual {p0, p0}, Lcom/metamoji/nt/NtPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    .line 4416
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 4419
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 4420
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createPasteboardExtrasApplyManager()Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;

    move-result-object v2

    .line 4421
    invoke-virtual {v2, p1, v1, p0}, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;->applyPasteboardExtras(Ljava/util/Map;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPageController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4424
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 4425
    throw p1
.end method

.method public canPaperChange()Z
    .locals 5

    .line 1864
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getBackgroundLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1866
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 1870
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfController;->getType()Ljava/lang/String;

    move-result-object v3

    .line 1871
    const-string v4, "$bgimage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    .line 1873
    :cond_1
    const-string v4, "$pdf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1875
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v3, "template"

    invoke-interface {v0, v3}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public canSetBackgroundImage()Z
    .locals 4

    .line 1889
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getBackgroundLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1891
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    .line 1895
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfController;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1896
    const-string v3, "$bgimage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public demandChild(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 1036
    iput-object v0, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 1037
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->removeEventHandlersForCollabo()V

    .line 1038
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public extractText()Ljava/lang/String;
    .locals 2

    .line 1130
    invoke-virtual {p0, p0}, Lcom/metamoji/nt/NtPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    .line 1131
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 1133
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1135
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->extractText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1137
    :cond_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 1140
    throw v1
.end method

.method public formPosData()Lcom/metamoji/un/form/UnFormPositionData;
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->m_formPosData:Lcom/metamoji/un/form/UnFormPositionData;

    if-nez v0, :cond_0

    .line 1822
    new-instance v0, Lcom/metamoji/un/form/UnFormPositionData;

    invoke-direct {v0}, Lcom/metamoji/un/form/UnFormPositionData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtPageController;->m_formPosData:Lcom/metamoji/un/form/UnFormPositionData;

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->m_formPosData:Lcom/metamoji/un/form/UnFormPositionData;

    return-object v0
.end method

.method public getBackgroundImageParams()Lcom/metamoji/nt/NtPageController$BGImageParams;
    .locals 2

    .line 825
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getBgImageLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 827
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    instance-of v1, v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;

    if-eqz v1, :cond_0

    .line 830
    check-cast v0, Lcom/metamoji/un/bgimage/UnBGImageUnit;

    .line 832
    new-instance v1, Lcom/metamoji/nt/NtPageController$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/nt/NtPageController$1;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/un/bgimage/UnBGImageUnit;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBgFormLayer()Lcom/metamoji/nt/NtLayerController;
    .locals 1

    .line 306
    const-string/jumbo v0, "system:form"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 308
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBgImageLayer()Lcom/metamoji/nt/NtLayerController;
    .locals 1

    .line 318
    const-string/jumbo v0, "system:background"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 320
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommonLayerId()Ljava/lang/String;
    .locals 1

    .line 3895
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getCommonLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentLayer()Lcom/metamoji/df/controller/DfLayerController;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLayer()Lcom/metamoji/nt/NtLayerController;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    invoke-super {p0}, Lcom/metamoji/df/controller/DfPageController;->getCurrentLayer()Lcom/metamoji/df/controller/DfLayerController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtLayerController;

    return-object v0
.end method

.method public getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;
    .locals 2

    .line 1103
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1108
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    .line 1109
    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    return-object v0
.end method

.method public getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;
    .locals 1

    .line 2204
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDocument()Lcom/metamoji/df/controller/DfDocument;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/metamoji/nt/NtDocument;
    .locals 1

    .line 754
    invoke-super {p0}, Lcom/metamoji/df/controller/DfPageController;->getDocument()Lcom/metamoji/df/controller/DfDocument;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    return-object v0
.end method

.method public getDwLines()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1803
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "dw_lines"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLayer(I)Lcom/metamoji/df/controller/DfLayerController;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object p1

    return-object p1
.end method

.method public getLayer(I)Lcom/metamoji/nt/NtLayerController;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtLayerController;

    return-object p1
.end method

.method protected getMizuhikimakuHeight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getNoteController()Lcom/metamoji/df/controller/DfNoteController;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    return-object v0
.end method

.method public getNoteController()Lcom/metamoji/nt/NtNoteController;
    .locals 1

    .line 1152
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtNoteController;

    return-object v0
.end method

.method public getObjectBounds()Lcom/metamoji/cm/RectEx;
    .locals 4

    .line 2199
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 2179
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectListener()Lcom/metamoji/ctold/CtObjectListener;
    .locals 1

    .line 2969
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->objectListener:Lcom/metamoji/ctold/CtObjectListener;

    return-object v0
.end method

.method public getObjectSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 2194
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    return-object v0
.end method

.method public getObjectType()Lcom/metamoji/ctold/object/CtObjectType;
    .locals 1

    .line 2174
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_PAGE:Lcom/metamoji/ctold/object/CtObjectType;

    return-object v0
.end method

.method public getOwnerUnit()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "pageId"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPageIdFromTeacherPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3587
    const-string v0, "_[layer-forTeacherPersonal]_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 3589
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPageListThumbnail(F)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 4307
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtPageController;->getPageListThumbnail(FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method getPageListThumbnail(FZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 4311
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 4312
    invoke-static {v0, p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;

    move-result-object v0

    .line 4313
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    const/4 v2, 0x0

    .line 4330
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 4314
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4317
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    const/4 v4, 0x1

    const-string/jumbo v5, "visiblePersonalTemplateLayer"

    if-nez v1, :cond_0

    .line 4319
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4323
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4325
    const-string/jumbo v1, "visibleTeacherPersonalLayer"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 4330
    const-string/jumbo p2, "visibleEditLayer"

    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4332
    :cond_2
    invoke-virtual {p0, p1, v2, v0}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FZLjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getParentObject()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonalGroupLayerInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 4176
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4178
    const-string v1, "layerName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4179
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByGroupId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "layerId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3953
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 3954
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerId(Lcom/metamoji/nt/NtNoteController;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPersonalLayerInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4109
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 4110
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4111
    iget v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4115
    :cond_0
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersonalLayerInfo(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4121
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "layerId"

    const-string v3, "layerName"

    if-ne v0, v1, :cond_1

    .line 4124
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 4125
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4127
    const-string/jumbo v1, "user-list"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 4129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4130
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 4132
    const-string/jumbo v4, "user-name"

    invoke-static {v1, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4133
    const-string/jumbo v5, "user-id"

    invoke-static {v1, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4134
    const-string v6, "class-number"

    invoke-static {v1, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4135
    const-string v7, "login-name"

    invoke-static {v1, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 4136
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4137
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4138
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4139
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4140
    const-string v0, "classNumber"

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4141
    const-string v0, "loginName"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 4149
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4152
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 4153
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4155
    const-string v0, "group-name"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4156
    const-string v1, "group-id"

    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4157
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtPageController;->getPersonalGroupLayerInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 4160
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 4164
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4165
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CLASS:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4166
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPersonalLayerInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 2990
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    return-object v0
.end method

.method getPersonalTemplateId()Ljava/lang/String;
    .locals 1

    .line 3287
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getPersonalTemplateLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchoolPageType()I
    .locals 1

    .line 4204
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageType(Lcom/metamoji/df/model/IModel;)I

    move-result v0

    return v0
.end method

.method getTeacherPersonalLayerInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3600
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 3601
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3602
    iget v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3607
    :cond_0
    iget-object v1, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtPageController;->getTeacherPersonalLayerInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTeacherPersonalLayerInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3616
    const-string v1, "layerName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3617
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/metamoji/nt/NtPageController;->getTeacherPersonalLayerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "layerId"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getTextUnitBackgroundColor()Ljava/lang/String;
    .locals 1

    .line 1698
    const-string/jumbo v0, "textUnitBackgroundColor"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtPageController;->textUnitSettingsValueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextUnitBackgroundColorAlpha()F
    .locals 2

    .line 1706
    const-string/jumbo v0, "textUnitBackgroundColorAlpha"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtPageController;->textUnitSettingsValueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    return v0
.end method

.method public getTextUnitBorderStyle()Ljava/lang/String;
    .locals 1

    .line 1690
    const-string/jumbo v0, "textUnitBorderStyle"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtPageController;->textUnitSettingsValueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextUnitFontColor()Ljava/lang/String;
    .locals 1

    .line 1714
    const-string/jumbo v0, "textUnitFontColor"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtPageController;->textUnitSettingsValueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextUnitFontFamily()Ljava/lang/String;
    .locals 1

    .line 1665
    const-string/jumbo v0, "textUnitFontFamily"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtPageController;->textUnitSettingsValueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextUnitFontSize()F
    .locals 2

    .line 1673
    const-string/jumbo v0, "textUnitFontSize"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtPageController;->textUnitSettingsValueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    return v0
.end method

.method public getTextUnitLineHeight()F
    .locals 2

    .line 1657
    const-string/jumbo v0, "textUnitLineHeight"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtPageController;->textUnitSettingsValueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result v0

    return v0
.end method

.method public getTextUnitRuledLineStyle()Ljava/lang/String;
    .locals 1

    .line 1682
    const-string/jumbo v0, "textUnitRuledLineStyle"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtPageController;->textUnitSettingsValueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextUnitVerticalWriting()Z
    .locals 2

    .line 1722
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1723
    const-string/jumbo v0, "textUnitVerticalWriting"

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtPageController;->textUnitSettingsValueOrDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getThumbnail()Lcom/metamoji/cm/Blob;
    .locals 3

    .line 2275
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2278
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v2, "thumbModel"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 2283
    :cond_1
    const-string/jumbo v1, "v"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v1

    .line 2285
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/metamoji/nt/NtPageController;->_temporaryRestored:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 2286
    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    :cond_2
    return-object v1
.end method

.method getUnitIdModelMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    .line 2162
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v0

    .line 2163
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v1

    .line 2165
    new-instance v2, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    const/4 v3, 0x0

    sget-object v4, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->CollectModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-direct {v2, v1, v3, v4}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;)V

    .line 2167
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    .line 2169
    invoke-virtual {v2}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hasTextUnitSettings()Z
    .locals 3

    .line 1787
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->m_textUnitSettingsModel:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1789
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v2, "textUnitSettings"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPageController;->m_textUnitSettingsModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hideCommonLayer()V
    .locals 2

    .line 4023
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$15;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtPageController$15;-><init>(Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hidePersonalLayer()V
    .locals 1

    const/4 v0, 0x0

    .line 4057
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->hidePersonalLayer(Ljava/lang/String;)V

    return-void
.end method

.method public hidePersonalLayer(Ljava/lang/String;)V
    .locals 2

    .line 4066
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$17;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtPageController$17;-><init>(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method hidePersonalTemplateLayer()V
    .locals 2

    .line 3353
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$9;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtPageController$9;-><init>(Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method hideTeacherPersonalLayer()V
    .locals 2

    .line 3551
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$12;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtPageController$12;-><init>(Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public hideTeacherPersonalLayer(Ljava/lang/String;)V
    .locals 2

    .line 3533
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$11;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtPageController$11;-><init>(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 4

    .line 939
    const-string/jumbo v0, "thumbModel"

    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    const/4 v1, 0x1

    .line 943
    :try_start_0
    iget-object v2, p1, Lcom/metamoji/df/controller/ControllerContext;->document:Lcom/metamoji/df/controller/DfDocument;

    invoke-virtual {v2}, Lcom/metamoji/df/controller/DfDocument;->isFromTemplate()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    iget v2, p0, Lcom/metamoji/nt/NtPageController;->_autoPaper:I

    if-eqz v2, :cond_2

    .line 949
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 950
    iput-boolean v1, p0, Lcom/metamoji/nt/NtPageController;->_thumbnail_dirtyflag:Z

    goto :goto_1

    .line 944
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/metamoji/nt/NtPageController;->_thumbnail_dirtyflag:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 954
    :catch_0
    const-string v0, "maybe old type thumbnail was detected."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 958
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 959
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_3

    .line 968
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->hasSchoolPageTypeForPageModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 969
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeDefaultValue()I

    move-result v2

    .line 970
    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2, v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->setSchoolPageType(ILcom/metamoji/df/model/IModel;)V

    .line 971
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 977
    :cond_3
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtPageController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v2, 0x0

    .line 978
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 979
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    const-string v3, "CTAG"

    invoke-virtual {v0, v3}, Lcom/metamoji/df/sprite/Sprite;->setName(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v3}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 981
    iget-object p1, p1, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object p1, p0, Lcom/metamoji/nt/NtPageController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 982
    new-instance p1, Lcom/metamoji/nt/NtPageController$2;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtPageController$2;-><init>(Lcom/metamoji/nt/NtPageController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtPageController;->_tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    .line 993
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    .line 994
    new-instance v0, Lcom/metamoji/ctold/CtCompositeObjectListener;

    new-array v1, v1, [Lcom/metamoji/ctold/CtObjectListener;

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/metamoji/ctold/CtCompositeObjectListener;-><init>(Lcom/metamoji/nt/NtPageController;[Lcom/metamoji/ctold/CtObjectListener;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtPageController;->objectListener:Lcom/metamoji/ctold/CtObjectListener;

    return-void
.end method

.method public isAllowVisiblePersonalTemplate(Z)Z
    .locals 4

    .line 3320
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 3322
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3326
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    if-eqz v1, :cond_5

    .line 3327
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3331
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 3335
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    if-nez p1, :cond_4

    .line 3341
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isTeacherPersonalLayer()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public isBackgroundPDF()Z
    .locals 3

    .line 1908
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getBackgroundLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1910
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 1914
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfController;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1915
    const-string v2, "$pdf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isModified()Z
    .locals 1

    .line 1856
    iget-boolean v0, p0, Lcom/metamoji/nt/NtPageController;->_thumbnail_dirtyflag:Z

    return v0
.end method

.method public isOnRestoringPurging()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/metamoji/nt/NtPageController;->_isOnPurging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/nt/NtPageController;->_isOnRestoring:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVisibleForLayerId(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 4087
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$18;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtPageController$18;-><init>(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public layerIndexForType(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public layerIndexForType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 290
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 291
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    .line 293
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 2

    .line 2092
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    move-result v0

    .line 2093
    instance-of v1, p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    if-eqz v1, :cond_1

    .line 2094
    check-cast p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    .line 2095
    invoke-virtual {p1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p1

    .line 2096
    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 2098
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPageController;->_displayTag:Z

    .line 2099
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {p1, v1}, Lcom/metamoji/ctold/CtDocTagManager;->addTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2102
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPageController;->_displayTag:Z

    .line 2103
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {p1, v1}, Lcom/metamoji/ctold/CtDocTagManager;->removeTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 2105
    :goto_0
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    return v0

    .line 2106
    :cond_1
    instance-of v1, p1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    if-eqz v1, :cond_2

    .line 2107
    check-cast p1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    .line 2108
    invoke-virtual {p1}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;->getMediaType()Lcom/metamoji/df/controller/ControllerContext$MediaType;

    move-result-object p1

    .line 2109
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-eq p1, v1, :cond_2

    .line 2110
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 2111
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    :cond_2
    return v0
.end method

.method public makeCommonLayer()I
    .locals 5

    .line 3629
    const-string/jumbo v0, "system:common"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 3632
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCommonLayerId()Ljava/lang/String;

    move-result-object v1

    .line 3635
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 3636
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_[unit]_draw"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "unitId"

    invoke-static {v4, v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 3640
    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 3642
    :cond_0
    const-string/jumbo v1, "system:edit"

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    .line 3644
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtPageController;->insertLayer(ILcom/metamoji/df/model/IModel;)V

    .line 3647
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 3648
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_1
    return v1
.end method

.method public makeCurrentLayerToCommon()V
    .locals 5

    const/4 v0, 0x0

    .line 3176
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    .line 3179
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalLayer()V

    .line 3181
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hideTeacherPersonalLayer()V

    .line 3183
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3184
    const-string/jumbo v3, "system:common"

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3189
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->makeCommonLayer()I

    move-result v3

    .line 3192
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v4

    .line 3193
    invoke-virtual {v4, v2}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 3195
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtPageController;->setCurrentLayerIndex(I)V

    :goto_0
    if-eqz v1, :cond_1

    .line 3199
    const-string/jumbo v3, "system:private"

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3200
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 3204
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->isAllowVisiblePersonalTemplate(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3206
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->showPersonalTemplateLayer()V

    .line 3207
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->setColorFaintPersonalTemplateLayer(Z)V

    return-void

    .line 3210
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    return-void
.end method

.method public makeCurrentLayerToEdit()V
    .locals 4

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hideCommonLayer()V

    .line 422
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalLayer()V

    .line 425
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hideTeacherPersonalLayer()V

    .line 428
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->setColorFaintEditLayer(Z)V

    .line 431
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 432
    const-string/jumbo v2, "system:edit"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v2

    .line 436
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->setCurrentLayerIndex(I)V

    :goto_0
    if-eqz v1, :cond_1

    .line 442
    const-string/jumbo v2, "system:private"

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 449
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->isAllowVisiblePersonalTemplate(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->showPersonalTemplateLayer()V

    .line 451
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->setColorFaintPersonalTemplateLayer(Z)V

    return-void

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    return-void

    .line 457
    :cond_3
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->isAllowVisiblePersonalTemplate(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 458
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->showPersonalTemplateLayer()V

    .line 459
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->setColorFaintPersonalTemplateLayer(Z)V

    return-void

    .line 462
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    return-void
.end method

.method public makeCurrentLayerToOfflinePersonal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3699
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    .line 3703
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hideTeacherPersonalLayer()V

    .line 3707
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    .line 3709
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3710
    const-string/jumbo v1, "system:offline_personal"

    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3711
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 3717
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->makeOfflinePersonalLayer(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 3720
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object p2

    .line 3722
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$14;

    invoke-direct {v1, p0, p2}, Lcom/metamoji/nt/NtPageController$14;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 3729
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setCurrentLayerIndex(I)V

    return-void
.end method

.method public makeCurrentLayerToPersonal(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3781
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    .line 3785
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hideTeacherPersonalLayer()V

    .line 3789
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    .line 3791
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3792
    const-string/jumbo v2, "system:personal"

    .line 3793
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3794
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3800
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->makePersonalLayer(Ljava/lang/String;)I

    move-result p1

    .line 3803
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    .line 3804
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->showPersonalLayer(Lcom/metamoji/nt/NtLayerController;)V

    .line 3806
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setCurrentLayerIndex(I)V

    if-eqz v1, :cond_2

    .line 3809
    const-string/jumbo p1, "system:private"

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3810
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public makeCurrentLayerToPersonalTemplate()V
    .locals 5

    const/4 v0, 0x0

    .line 3220
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    .line 3223
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalLayer()V

    .line 3227
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hideTeacherPersonalLayer()V

    const/4 v1, 0x1

    .line 3230
    const-string/jumbo v2, "system:personal_template"

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(ZLjava/lang/String;)V

    .line 3232
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3233
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3239
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->makePersonalTemplateLayer()I

    move-result v2

    .line 3242
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v4

    .line 3243
    invoke-virtual {v4, v1}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 3245
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->setCurrentLayerIndex(I)V

    if-eqz v3, :cond_1

    .line 3248
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "system:private"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3249
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    .line 3250
    invoke-virtual {v3, v0}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public makeCurrentLayerToPrivate()V
    .locals 4

    const/4 v0, 0x1

    .line 373
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    .line 377
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    .line 379
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 380
    const-string/jumbo v2, "system:private"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    .line 389
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 390
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 392
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 394
    :cond_1
    const-string/jumbo v2, "system:edit"

    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v0

    .line 396
    invoke-virtual {p0, v2, v1}, Lcom/metamoji/nt/NtPageController;->insertLayer(ILcom/metamoji/df/model/IModel;)V

    .line 399
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_2
    move v1, v2

    .line 404
    :cond_3
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    .line 405
    invoke-virtual {v2, v0}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 407
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtPageController;->setCurrentLayerIndex(I)V

    return-void
.end method

.method makeCurrentLayerToTeacherPersonal(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 3393
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    .line 3396
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalLayer()V

    .line 3400
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    .line 3402
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3403
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "system:teacher_personal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3404
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3410
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->makeTeacherPersonalLayer(Ljava/lang/String;)I

    move-result p1

    .line 3413
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    .line 3414
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->showTeacherPersonalLayer(Lcom/metamoji/nt/NtLayerController;)V

    .line 3416
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setCurrentLayerIndex(I)V

    if-eqz v1, :cond_1

    .line 3419
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "system:private"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3420
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    .line 3421
    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public makeLayersForSchool()V
    .locals 1

    const/4 v0, 0x0

    .line 2997
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->makeLayersForSchool(Z)V

    return-void
.end method

.method public makeLayersForSchool(Z)V
    .locals 3

    .line 3006
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->updatePersonalLayerInfoList()V

    .line 3008
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 3009
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3014
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->makeCommonLayer()I

    .line 3017
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    const-string v1, "layerId"

    if-eqz v0, :cond_3

    .line 3018
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 3019
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3020
    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3022
    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3023
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->makePersonalLayer(Ljava/lang/String;)I

    goto :goto_0

    .line 3029
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getTeacherPersonalLayerInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3031
    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3032
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->makeTeacherPersonalLayer(Ljava/lang/String;)I

    return-void

    .line 3035
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v0

    if-eqz v0, :cond_5

    .line 3037
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 3038
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3039
    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 3041
    invoke-static {v2, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3042
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->makePersonalLayer(Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 3049
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3051
    invoke-static {p1, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3052
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->makePersonalLayer(Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method makeOfflinePersonalLayer(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 3737
    const-string/jumbo v0, "system:offline_personal"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    .line 3742
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 3744
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "_[unit]_draw"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "unitId"

    invoke-static {v2, p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 3749
    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 3752
    :cond_0
    const-string/jumbo p1, "system:personal"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 3755
    const-string/jumbo p1, "system:common"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result p1

    :cond_1
    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 3758
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtPageController;->insertLayer(ILcom/metamoji/df/model/IModel;)V

    .line 3761
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 3762
    iget-object p2, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_2
    return p1

    :cond_3
    return v1
.end method

.method public makePasteboardExtras()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4403
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;-><init>(Lcom/metamoji/nt/NtDocument;)V

    .line 4404
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->makePasteboardExtrasWithContext(Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method makePasteboardExtrasWithContext(Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4408
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createPasteboardExtrasMakeManager()Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 4410
    new-array v1, v1, [Lcom/metamoji/ctold/CtTaggableObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;->makePasteboardExtras(Ljava/util/List;Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public makePersonalLayer(Ljava/lang/String;)I
    .locals 9

    .line 3819
    const-string/jumbo v0, "system:personal"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_8

    .line 3824
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 3828
    const-string/jumbo v1, "system:personal_template"

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_3

    .line 3830
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 3831
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 3832
    invoke-interface {v5}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 3833
    invoke-static {v5}, Lcom/metamoji/df/model/ModelUtils;->cloneModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 3835
    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 3837
    const-string v6, "class"

    .line 3840
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v7

    .line 3841
    new-instance v8, Lcom/metamoji/nt/NtAuthorInfo;

    invoke-direct {v8}, Lcom/metamoji/nt/NtAuthorInfo;-><init>()V

    .line 3842
    invoke-virtual {v7, v6}, Lcom/metamoji/nt/NtNoteController;->getUserNameForUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/metamoji/nt/NtAuthorInfo;->setDcUserName(Ljava/lang/String;)V

    .line 3843
    invoke-virtual {v8}, Lcom/metamoji/nt/NtAuthorInfo;->getDcUserName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 3844
    invoke-virtual {v8, v6}, Lcom/metamoji/nt/NtAuthorInfo;->setDcUserId(Ljava/lang/String;)V

    .line 3845
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getCompanyId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/metamoji/nt/NtAuthorInfo;->setCompanyId(Ljava/lang/String;)V

    .line 3847
    :cond_1
    invoke-static {v5, v8, v4}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->setAuthorInfoToUnitModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/nt/NtAuthorInfo;Z)V

    .line 3850
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v7

    .line 3851
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v8

    .line 3852
    invoke-virtual {p0, v5, v7, v8, v6}, Lcom/metamoji/nt/NtPageController;->renewIdentifiers(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/lang/String;)Ljava/util/Map;

    .line 3854
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3855
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 3859
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_4

    .line 3862
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_5

    .line 3866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_[unit]_draw"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "unitId"

    invoke-static {v1, p1, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 3867
    invoke-interface {v0, v5}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 3875
    :cond_5
    const-string/jumbo p1, "system:common"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 3878
    const-string/jumbo p1, "system:edit"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result p1

    :cond_6
    add-int/2addr p1, v4

    .line 3881
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtPageController;->insertLayer(ILcom/metamoji/df/model/IModel;)V

    .line 3884
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    if-ne v4, v0, :cond_7

    .line 3885
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_7
    return p1

    :cond_8
    return v1
.end method

.method makePersonalTemplateLayer()I
    .locals 4

    .line 3255
    const-string/jumbo v0, "system:personal_template"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 3258
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPersonalTemplateId()Ljava/lang/String;

    move-result-object v1

    .line 3262
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 3263
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3266
    const-string v3, "_[unit]_draw"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%s$s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "unitId"

    invoke-static {v3, v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 3267
    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 3270
    :cond_0
    const-string/jumbo v1, "system:edit"

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3272
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtPageController;->insertLayer(ILcom/metamoji/df/model/IModel;)V

    .line 3275
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 3276
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_1
    return v1
.end method

.method makeTeacherPersonalLayer(Ljava/lang/String;)I
    .locals 8

    .line 3427
    const-string/jumbo v0, "system:teacher_personal"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_7

    .line 3432
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 3437
    const-string/jumbo v1, "system:personal_template"

    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 3439
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 3440
    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 3441
    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 3442
    invoke-static {v4}, Lcom/metamoji/df/model/ModelUtils;->cloneModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 3444
    invoke-static {p1}, Lcom/metamoji/nt/NtPageController;->getUserIdFromTeacherPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 3447
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v5

    .line 3448
    invoke-virtual {v5}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v5

    .line 3449
    iget-object v5, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 3453
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;

    move-result-object v6

    .line 3454
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;

    move-result-object v7

    .line 3455
    invoke-virtual {p0, v4, v6, v7, v5}, Lcom/metamoji/nt/NtPageController;->renewIdentifiers(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/lang/String;)Ljava/util/Map;

    .line 3457
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3458
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 3462
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 3465
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtDocumentTemplate;->newDrawCanvas(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    .line 3469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_[unit]_draw"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "unitId"

    invoke-static {v1, p1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setStringPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 3470
    invoke-interface {v0, v4}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 3474
    :cond_4
    const-string/jumbo p1, "system:common"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 3477
    const-string/jumbo p1, "system:edit"

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result p1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 3480
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtPageController;->insertLayer(ILcom/metamoji/df/model/IModel;)V

    .line 3483
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    const/4 v1, 0x4

    if-le v1, v0, :cond_6

    .line 3484
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_6
    return p1

    :cond_7
    return v1
.end method

.method public notifyPageActivated()V
    .locals 2

    .line 2920
    invoke-super {p0}, Lcom/metamoji/df/controller/DfPageController;->notifyPageActivated()V

    .line 2921
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->addEventHandlersForCollabo()V

    .line 2924
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$6;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtPageController$6;-><init>(Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyPageDeactivating()V
    .locals 0

    .line 2942
    invoke-super {p0}, Lcom/metamoji/df/controller/DfPageController;->notifyPageDeactivating()V

    .line 2943
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->removeEventHandlersForCollabo()V

    return-void
.end method

.method public notifyViewingPositionChangedOnCollabo(Z)V
    .locals 1

    .line 2950
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2953
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->viewingPositonChanged(Lcom/metamoji/nt/NtPageController;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2957
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2955
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public offlinePersonalLayer()Lcom/metamoji/nt/NtLayerController;
    .locals 1

    .line 3680
    const-string/jumbo v0, "system:offline_personal"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3682
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPurged(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 2077
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->onPurged(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 2078
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->m_formPosData:Lcom/metamoji/un/form/UnFormPositionData;

    if-eqz p1, :cond_0

    .line 2079
    invoke-virtual {p1}, Lcom/metamoji/un/form/UnFormPositionData;->cleanUp()V

    :cond_0
    return-void
.end method

.method protected onPurging(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    const/4 v0, 0x1

    .line 2050
    iput-boolean v0, p0, Lcom/metamoji/nt/NtPageController;->_isOnPurging:Z

    const/4 v1, 0x0

    .line 2053
    :try_start_0
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->onPurging(Lcom/metamoji/df/controller/ControllerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2057
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v2, "thumbModel"

    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2059
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2062
    :try_start_2
    const-string v0, "maybe old type thumbnail was detected."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 2063
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2066
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/metamoji/nt/NtPageController;->_isOnPurging:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/metamoji/nt/NtPageController;->_isOnPurging:Z

    .line 2067
    throw p1
.end method

.method protected onRestored(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 2223
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->onRestored(Lcom/metamoji/df/controller/ControllerContext;)V

    const/4 p1, 0x0

    .line 2224
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->showHideAltSprite(Z)V

    return-void
.end method

.method protected onRestoring(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 2209
    iput-boolean v0, p0, Lcom/metamoji/nt/NtPageController;->_isOnRestoring:Z

    const/4 v0, 0x0

    .line 2212
    :try_start_0
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->onRestoring(Lcom/metamoji/df/controller/ControllerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    iput-boolean v0, p0, Lcom/metamoji/nt/NtPageController;->_isOnRestoring:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/metamoji/nt/NtPageController;->_isOnRestoring:Z

    .line 2215
    throw p1
.end method

.method public pageActivated(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 2

    .line 2778
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getVideoUnitManager()Lcom/metamoji/un/video/UnVideoUnitManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2780
    move-object v1, p1

    check-cast v1, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/video/UnVideoUnitManager;->setCurrentPage(Lcom/metamoji/nt/NtPageController;)V

    .line 2782
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSoundUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2784
    move-object v1, p1

    check-cast v1, Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/sound/UnSoundUnitManager;->setCurrentPage(Lcom/metamoji/nt/NtPageController;)V

    .line 2787
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2788
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->showHideAltSprite(Z)V

    .line 2790
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$5;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtPageController$5;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/DfPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2796
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->pageActivated(Lcom/metamoji/df/controller/DfPageController;)V

    return-void
.end method

.method public pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 1

    .line 2229
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V

    .line 2231
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2235
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->pageDeactivating()V

    .line 2238
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    .line 2241
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2242
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToCommon()V

    goto :goto_0

    .line 2244
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToEdit()V

    .line 2251
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2252
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->clearUndo()V

    .line 2256
    :cond_2
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->_document:Lcom/metamoji/df/controller/DfDocument;

    check-cast p1, Lcom/metamoji/nt/NtDocument;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2258
    invoke-virtual {p1, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->currentPageChangingFrom(Lcom/metamoji/nt/NtPageController;)V

    :cond_3
    const/4 p1, 0x0

    .line 2262
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    return-void
.end method

.method public paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 2085
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->m_formPosData:Lcom/metamoji/un/form/UnFormPositionData;

    if-eqz p1, :cond_0

    .line 2086
    invoke-virtual {p1}, Lcom/metamoji/un/form/UnFormPositionData;->cleanUp()V

    :cond_0
    return-void
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 3

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MMJNtPageController : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 1165
    sget-object v0, Lcom/metamoji/nt/NtPageController$22;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 1176
    :cond_0
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtPageController;->handlePDFLocation(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 1172
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->fitToPaperWidth()V

    goto :goto_0

    .line 1167
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->fitToPaper()V

    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 1199
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object v0

    .line 1200
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/flip/UnFlipUnitManager;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_4

    .line 1205
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    .line 1206
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result v0

    :cond_4
    if-nez v0, :cond_6

    .line 1212
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->isDetailWindowMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1214
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v2

    goto :goto_2

    .line 1216
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/nt/INtAppFrame;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_6

    .line 1220
    invoke-virtual {v2, p1, p2}, Lcom/metamoji/nt/NtUnitController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public performPageApplyTemplateUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 7

    .line 1570
    const-string v0, "%s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1573
    const-string/jumbo v0, "system:background"

    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtPageController;->layerModelForType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1574
    const-string v1, "bgl"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1575
    invoke-direct {p0, p1, v1, v0}, Lcom/metamoji/nt/NtPageController;->performLayerFromUndoOrRedo(ZLcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 1577
    const-string/jumbo v0, "system:form"

    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1}, Lcom/metamoji/nt/NtPageController;->layerModelForType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1578
    const-string v1, "fml"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1579
    invoke-direct {p0, p1, v1, v0}, Lcom/metamoji/nt/NtPageController;->performLayerFromUndoOrRedo(ZLcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    const/4 v0, 0x0

    .line 1582
    iput-object v0, p0, Lcom/metamoji/nt/NtPageController;->m_textUnitSettingsModel:Lcom/metamoji/df/model/IModel;

    .line 1583
    const-string/jumbo v0, "textUnitSettings"

    if-eqz p1, :cond_1

    .line 1584
    const-string v1, "TSO"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1588
    :cond_0
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    goto :goto_0

    .line 1591
    :cond_1
    const-string v1, "TSN"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1593
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1595
    :cond_2
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 1600
    :goto_0
    const-string v0, "dw_lines"

    if-eqz p1, :cond_3

    .line 1601
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "DLO"

    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 1604
    :cond_3
    const-string v1, "DLN"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1606
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 1610
    const-string v0, "PPWO"

    goto :goto_2

    :cond_5
    const-string v0, "PPWN"

    :goto_2
    const-wide v1, 0x407a100000000000L    # 417.0

    invoke-interface {p2, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    if-eqz p1, :cond_6

    .line 1611
    const-string v1, "PPHO"

    goto :goto_3

    :cond_6
    const-string v1, "PPHN"

    :goto_3
    const-wide v2, 0x4081600000000000L    # 556.0

    invoke-interface {p2, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    if-eqz p1, :cond_7

    .line 1612
    const-string v2, "PRWO"

    goto :goto_4

    :cond_7
    const-string v2, "PRWN"

    :goto_4
    const/high16 v3, 0x43520000    # 210.0f

    const/high16 v4, 0x42900000    # 72.0f

    invoke-static {v3, v4}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-double v5, v3

    invoke-interface {p2, v2, v5, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    if-eqz p1, :cond_8

    .line 1613
    const-string p1, "PRHO"

    goto :goto_5

    :cond_8
    const-string p1, "PRHN"

    :goto_5
    const v3, 0x43948000    # 297.0f

    invoke-static {v3, v4}, Lcom/metamoji/df/controller/DfUtility;->mm2px(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-double v3, v3

    invoke-interface {p2, p1, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 1615
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->setPrintWidth(F)V

    .line 1616
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setPrintHeight(F)V

    .line 1617
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtPageController;->setPaperSize(FF)V

    const/4 p1, 0x1

    .line 1618
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    return-void
.end method

.method performPageBGImageUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 531
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getBackgroundLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object p1

    const-class v0, Lcom/metamoji/nt/NtLayerController;

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtLayerController;

    if-nez p1, :cond_0

    return-void

    .line 536
    :cond_0
    const-string v0, "a"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 537
    const-string v2, "r"

    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    const/4 v4, -0x1

    .line 543
    invoke-static {v1, p1, v4}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;I)Lcom/metamoji/df/controller/DfController;

    :cond_1
    if-eqz v3, :cond_2

    .line 546
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtPageController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v4

    const-class v5, Lcom/metamoji/nt/NtUnitController;

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtUnitController;

    .line 549
    invoke-static {v4}, Lcom/metamoji/df/controller/DfUtility;->detachChildController(Lcom/metamoji/df/controller/DfController;)V

    .line 551
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 555
    :cond_2
    invoke-interface {p2, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 556
    invoke-interface {p2, v0, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method performPageStyleUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 7

    .line 669
    invoke-virtual {p0, p0}, Lcom/metamoji/nt/NtPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    .line 670
    sget-object v1, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_THUMBNAIL:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object v1, v0, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 671
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    if-eqz p1, :cond_0

    .line 674
    :try_start_0
    const-string v1, "ow"

    goto :goto_0

    :cond_0
    const-string v1, "nw"

    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-interface {p2, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    if-eqz p1, :cond_1

    .line 675
    const-string v2, "oh"

    goto :goto_1

    :cond_1
    const-string v2, "nh"

    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v3

    float-to-double v3, v3

    invoke-interface {p2, v2, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    if-eqz p1, :cond_2

    .line 676
    const-string v3, "opw"

    goto :goto_2

    :cond_2
    const-string v3, "npw"

    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPrintWidth()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {p2, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    if-eqz p1, :cond_3

    .line 677
    const-string v4, "oph"

    goto :goto_3

    :cond_3
    const-string v4, "nph"

    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPrintHeight()F

    move-result v5

    float-to-double v5, v5

    invoke-interface {p2, v4, v5, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 678
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/nt/NtPageController;->setPaperSize(FF)V

    .line 679
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtPageController;->setPrintWidth(F)V

    .line 680
    invoke-virtual {p0, v4}, Lcom/metamoji/nt/NtPageController;->setPrintHeight(F)V

    .line 683
    const-string v1, "bg"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 685
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    :cond_4
    const/4 p1, 0x1

    .line 689
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 692
    throw p1
.end method

.method performPageTextUnitCombineUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 701
    invoke-static {p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->performPageTextUnitCombineUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method performPageTextUnitConvertTextUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 719
    invoke-static {p1, p2}, Lcom/metamoji/tle/TextLineExtractorManager;->performPageTextUnitConvertTextUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method performPageTextUnitSeparateUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 710
    invoke-static {p1, p2}, Lcom/metamoji/un/text/UnTextUnit;->performPageTextUnitSeparateUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 485
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 487
    const-string v1, "pagebgimageundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->performPageBGImageUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 489
    :cond_0
    const-string v1, "pagestyleundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->performPageStyleUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 491
    :cond_1
    const-string v1, "page.textunit.combine.undo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->performPageTextUnitCombineUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 493
    :cond_2
    const-string v1, "page.textunit.separate.undo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->performPageTextUnitSeparateUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 495
    :cond_3
    const-string v1, "page.textunit.converttext.undo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->performPageTextUnitConvertTextUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    :cond_4
    return-void
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 1009
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1012
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToCommon()V

    goto :goto_0

    .line 1016
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->makeCurrentLayerToEdit()V

    .line 1023
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1025
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {v0, v1}, Lcom/metamoji/ctold/CtDocTagManager;->removeTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1028
    :cond_2
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 2

    .line 1332
    sget-object v0, Lcom/metamoji/nt/NtPageController$22;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 1338
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1340
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtUnitController;->processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 3

    .line 1378
    sget-object v0, Lcom/metamoji/nt/NtPageController$22;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->canSetBackgroundImage()Z

    move-result v0

    goto :goto_0

    .line 1380
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->canPaperChange()Z

    move-result v0

    :goto_0
    xor-int/2addr v0, v2

    .line 1390
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/INtAppFrame;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1392
    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtUnitController;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 2

    .line 1356
    sget-object v0, Lcom/metamoji/nt/NtPageController$22;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 1362
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtUnitController;->processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeOfflinePersonalLayer()V
    .locals 2

    .line 3657
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$13;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtPageController$13;-><init>(Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method renewIdentifiers(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4394
    new-instance v1, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    sget-object v2, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewIDForSchool:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-direct {v1, p3, v0, v2}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;)V

    .line 4395
    iput-object p4, v1, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->userId:Ljava/lang/String;

    .line 4397
    invoke-virtual {p2, p1, v1}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-object v0
.end method

.method setBackgroundImageParams(Lcom/metamoji/nt/NtPageController$BGImageParams;Lcom/metamoji/df/controller/EditContext;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    .line 764
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getBgImageLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 768
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 770
    instance-of v4, v3, Lcom/metamoji/un/bgimage/UnBGImageUnit;

    if-nez v4, :cond_1

    .line 771
    invoke-virtual {v3}, Lcom/metamoji/df/controller/DfController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot change background image because this page has non-image background. (%s)"

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 775
    :cond_1
    move-object v4, v3

    check-cast v4, Lcom/metamoji/un/bgimage/UnBGImageUnit;

    .line 777
    const-string v5, "pagebgimageundo"

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    iget-object v8, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    if-nez v8, :cond_2

    iget-object v8, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->Color:Ljava/lang/String;

    if-nez v8, :cond_2

    goto :goto_0

    .line 794
    :cond_2
    iget-object v3, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    .line 795
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v3

    .line 796
    iget-object v9, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    iget-object v10, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ImageBlob:Lcom/metamoji/cm/Blob;

    invoke-virtual {v10}, Lcom/metamoji/cm/Blob;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10, v8}, Lcom/metamoji/df/controller/AttachmentsManager;->registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    move-object v10, v8

    if-nez v4, :cond_4

    .line 801
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v9

    iget-object v11, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iget-object v12, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->Color:Ljava/lang/String;

    iget v3, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->Opacity:F

    float-to-double v13, v3

    iget v1, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ColorOpacity:F

    float-to-double v3, v1

    move-wide v15, v3

    invoke-static/range {v9 .. v16}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->createBGImageModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;Ljava/lang/String;DD)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 803
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    const/4 v3, -0x1

    .line 805
    invoke-static {v1, v2, v3}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;I)Lcom/metamoji/df/controller/DfController;

    .line 808
    invoke-static {v0, v5, v6}, Lcom/metamoji/nt/NtPageController$NtPageUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 809
    const-string v3, "r"

    invoke-interface {v2, v3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 811
    invoke-virtual {v7, v2, v6}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    return-void

    :cond_4
    move-object v2, v10

    .line 814
    iget-object v3, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->Style:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-object v5, v4

    iget-object v4, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->Color:Ljava/lang/String;

    move-object v6, v5

    iget v5, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->Opacity:F

    iget v1, v1, Lcom/metamoji/nt/NtPageController$BGImageParams;->ColorOpacity:F

    move-object/from16 v17, v6

    move v6, v1

    move-object/from16 v1, v17

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->setParameters(Ljava/lang/String;Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;Ljava/lang/String;FFLcom/metamoji/df/controller/EditContext;)V

    return-void

    :cond_5
    :goto_0
    move-object v1, v4

    if-eqz v3, :cond_6

    .line 780
    invoke-virtual {v1}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 783
    invoke-static {v3}, Lcom/metamoji/df/controller/DfUtility;->detachChildController(Lcom/metamoji/df/controller/DfController;)V

    .line 785
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 788
    invoke-static {v0, v5, v6}, Lcom/metamoji/nt/NtPageController$NtPageUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 789
    const-string v3, "a"

    invoke-interface {v2, v3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 790
    invoke-virtual {v7, v2, v6}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method setColorFaintEditLayer(Z)V
    .locals 2

    .line 3383
    const-string/jumbo v0, "system:edit"

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(ZLjava/lang/String;F)V

    return-void
.end method

.method setColorFaintPersonalTemplateLayer(Z)V
    .locals 2

    .line 3376
    const-string/jumbo v0, "system:personal_template"

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(ZLjava/lang/String;F)V

    return-void
.end method

.method public setCurrentLayerIndex(I)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayerIndex()I

    move-result v0

    .line 261
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->setCurrentLayerIndex(I)V

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayerIndex()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 263
    new-instance v0, Lcom/metamoji/nt/NtCurrentLayerChanged;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/NtCurrentLayerChanged;-><init>(I)V

    const/4 p1, 0x1

    .line 264
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    :cond_0
    return-void
.end method

.method public setDwLines(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1811
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "dw_lines"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 1812
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Lcom/metamoji/df/model/IModelManager;Z)V

    return-void
.end method

.method public setLayersColorFaint(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 332
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "CollaboDispPrivateModeType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 336
    :cond_0
    const-string/jumbo v0, "system:private"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(ZLjava/lang/String;)V

    return-void
.end method

.method public setLayersColorFaint(ZLjava/lang/String;)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const v1, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    move v1, v0

    .line 341
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 342
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v4

    .line 343
    invoke-virtual {v4}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_1

    .line 346
    const-string/jumbo v5, "system:common"

    invoke-virtual {v4}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 351
    :cond_1
    invoke-virtual {v4}, Lcom/metamoji/nt/NtLayerController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    goto :goto_2

    .line 353
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/nt/NtLayerController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setLayersColorFaint(ZLjava/lang/String;F)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    const/4 p1, 0x0

    .line 360
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 361
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setNeedsUpdateThumbnail()V
    .locals 1

    const/4 v0, 0x1

    .line 2295
    iput-boolean v0, p0, Lcom/metamoji/nt/NtPageController;->_thumbnail_dirtyflag:Z

    return-void
.end method

.method public setPageStyleSizeChanging(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/controller/EditContext;)V
    .locals 6

    .line 724
    invoke-virtual {p0, p0}, Lcom/metamoji/nt/NtPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    .line 725
    sget-object v1, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_THUMBNAIL:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object v1, v0, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 726
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 728
    :try_start_0
    const-string v1, "pagestyleundo"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/metamoji/nt/NtPageController$NtPageUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 730
    const-string v3, "ow"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {v1, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 731
    const-string v3, "oh"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {v1, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 732
    const-string v3, "opw"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPrintWidth()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {v1, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 733
    const-string v3, "oph"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPrintHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {v1, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 735
    const-string v3, "nw"

    iget v4, p1, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v4, v4

    invoke-interface {v1, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 736
    const-string v3, "nh"

    iget v4, p1, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v4, v4

    invoke-interface {v1, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 737
    const-string v3, "npw"

    iget v4, p2, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v4, v4

    invoke-interface {v1, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 738
    const-string v3, "nph"

    iget v4, p2, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v4, v4

    invoke-interface {v1, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 740
    iget v3, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0, v3, p1}, Lcom/metamoji/nt/NtPageController;->setPaperSize(FF)V

    .line 741
    iget p1, p2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setPrintWidth(F)V

    .line 742
    iget p1, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setPrintHeight(F)V

    .line 744
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    .line 746
    invoke-virtual {p3, v1, v2}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 749
    throw p1
.end method

.method public setPageStyleSpecialWithSizeChanging(ZLcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/nt/NtPageController$BGImageParams;Lcom/metamoji/df/controller/EditContext;)V
    .locals 6

    .line 612
    invoke-virtual {p0, p0}, Lcom/metamoji/nt/NtPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    .line 613
    sget-object v1, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_THUMBNAIL:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object v1, v0, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 614
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 616
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->canSetBackgroundImage()Z

    move-result v1

    if-nez p1, :cond_0

    if-eqz p4, :cond_3

    if-eqz v1, :cond_3

    .line 618
    :cond_0
    const-string v2, "pagestyleundo"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/metamoji/nt/NtPageController$NtPageUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 622
    const-string p1, "ow"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {v2, p1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 623
    const-string p1, "oh"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {v2, p1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 624
    const-string p1, "opw"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPrintWidth()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {v2, p1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 625
    const-string p1, "oph"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPrintHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-interface {v2, p1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 627
    const-string p1, "nw"

    iget v4, p2, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v4, v4

    invoke-interface {v2, p1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 628
    const-string p1, "nh"

    iget v4, p2, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v4, v4

    invoke-interface {v2, p1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 629
    const-string p1, "npw"

    iget v4, p3, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v4, v4

    invoke-interface {v2, p1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 630
    const-string p1, "nph"

    iget v4, p3, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v4, v4

    invoke-interface {v2, p1, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 632
    iget p1, p2, Lcom/metamoji/cm/SizeF;->width:F

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtPageController;->setPaperSize(FF)V

    .line 633
    iget p1, p3, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setPrintWidth(F)V

    .line 634
    iget p1, p3, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setPrintHeight(F)V

    :cond_1
    if-eqz p4, :cond_2

    if-eqz v1, :cond_2

    .line 641
    new-instance p1, Lcom/metamoji/df/controller/EditContext;

    invoke-direct {p1}, Lcom/metamoji/df/controller/EditContext;-><init>()V

    .line 642
    invoke-virtual {p0, p4, p1}, Lcom/metamoji/nt/NtPageController;->setBackgroundImageParams(Lcom/metamoji/nt/NtPageController$BGImageParams;Lcom/metamoji/df/controller/EditContext;)V

    .line 643
    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->detachUndo()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 644
    invoke-virtual {p1}, Lcom/metamoji/df/controller/EditContext;->destroy()V

    if-eqz p2, :cond_2

    .line 646
    const-string p1, "bg"

    invoke-interface {v2, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 651
    :cond_2
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtPageController;->updateThumbnail(Z)V

    .line 654
    invoke-virtual {p5, v2, v3}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :cond_3
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 658
    throw p1
.end method

.method public setSchoolPageType(I)V
    .locals 5

    .line 4213
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->setSchoolPageType(ILcom/metamoji/df/model/IModel;)V

    .line 4214
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    const/4 v1, 0x1

    .line 4215
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 4218
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4220
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/nt/NtPageController$19;

    invoke-direct {v4, p0}, Lcom/metamoji/nt/NtPageController$19;-><init>(Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 4233
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 4234
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isCurrentPage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4235
    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtNoteController;->updatePageStatusForSchool(Z)V

    :cond_1
    if-eqz v2, :cond_2

    .line 4240
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtPageController$20;

    invoke-direct {v2, p0, v0, v3, p1}, Lcom/metamoji/nt/NtPageController$20;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtNoteController;I)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 4261
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtPageController$21;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtPageController$21;-><init>(Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 4272
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    return-void
.end method

.method public setTextUnitBackgroundColor(Ljava/lang/String;)V
    .locals 2

    .line 1702
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getTextUnitSettingsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitBackgroundColor"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitBackgroundColorAlpha(F)V
    .locals 4

    .line 1710
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getTextUnitSettingsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitBackgroundColorAlpha"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setTextUnitBorderStyle(Ljava/lang/String;)V
    .locals 2

    .line 1694
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getTextUnitSettingsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitBorderStyle"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitFontColor(Ljava/lang/String;)V
    .locals 2

    .line 1718
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getTextUnitSettingsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitFontColor"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitFontFamily(Ljava/lang/String;)V
    .locals 2

    .line 1669
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getTextUnitSettingsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitFontFamily"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitFontSize(F)V
    .locals 4

    .line 1677
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getTextUnitSettingsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitFontSize"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setTextUnitLineHeight(F)V
    .locals 4

    .line 1661
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getTextUnitSettingsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitLineHeight"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setTextUnitRuledLineStyle(Ljava/lang/String;)V
    .locals 2

    .line 1686
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getTextUnitSettingsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitRuledLineStyle"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTextUnitVerticalWriting(Z)V
    .locals 2

    .line 1728
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 1729
    invoke-direct {p0}, Lcom/metamoji/nt/NtPageController;->getTextUnitSettingsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "textUnitVerticalWriting"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected showHideAltSprite(Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1048
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object p1

    .line 1049
    new-instance v1, Lcom/metamoji/df/controller/StageQueueingDisposer;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    .line 1051
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v2, :cond_0

    .line 1052
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v3, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_0

    .line 1054
    :cond_0
    new-instance v2, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v2}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object v2, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    .line 1056
    :goto_0
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 1057
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 1058
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 1059
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 1060
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 1061
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    .line 1062
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    const-string v3, "altPage"

    iput-object v3, v2, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    .line 1063
    iget-object v2, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 1067
    invoke-static {p1, v2, v2, v0}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1069
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result p1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v7, p1, v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result p1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v8, p1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    .line 1074
    :cond_1
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    invoke-virtual {v1}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v1}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 1077
    throw p1

    .line 1079
    :cond_2
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz p1, :cond_3

    .line 1080
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 1081
    iget-object p1, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 1082
    iput-object v0, p0, Lcom/metamoji/nt/NtPageController;->_altSprite:Lcom/metamoji/df/sprite/Sprite;

    :cond_3
    return-void
.end method

.method public showPersonalLayer(Lcom/metamoji/nt/NtLayerController;)V
    .locals 2

    .line 4042
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$16;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtPageController$16;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 4050
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->hidePersonalLayer(Ljava/lang/String;)V

    return-void
.end method

.method showPersonalTemplateLayer()V
    .locals 2

    .line 3300
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$8;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtPageController$8;-><init>(Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showTeacherPersonalLayer(Lcom/metamoji/nt/NtLayerController;)V
    .locals 2

    .line 3515
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$10;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtPageController$10;-><init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 3523
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->hideTeacherPersonalLayer(Ljava/lang/String;)V

    return-void
.end method

.method public takeMySnapshotForSchool(FZ)Landroid/graphics/Bitmap;
    .locals 3

    .line 4283
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 4285
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 4286
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4288
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 4291
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 4293
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4294
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 4296
    :cond_3
    invoke-static {v0, p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo(Ljava/lang/String;Lcom/metamoji/nt/NtPageController;)Ljava/util/Map;

    move-result-object v0

    .line 4299
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FZLjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public takeSnapShotWithoutEditLayer()Landroid/graphics/Bitmap;
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 4304
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtPageController;->getPageListThumbnail(FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public takeSnapshot(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;Z)Landroid/graphics/Bitmap;
    .locals 7

    .line 2451
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 2452
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "visibleCommonLayer"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2454
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/nt/NtPageController;->takeSnapshot(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;ZLjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public takeSnapshot(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;ZLjava/util/Map;)Landroid/graphics/Bitmap;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroid/graphics/PointF;",
            "Lcom/metamoji/cm/SizeF;",
            "Lcom/metamoji/df/sprite/PaintSolid;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p6

    .line 2459
    const-string/jumbo v5, "visibleTeacherPersonalLayer"

    const-string/jumbo v6, "visibleCommonLayer"

    const-string/jumbo v7, "visibleEditLayer"

    const-string/jumbo v8, "system:private"

    .line 2461
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    return-object v10

    .line 2464
    :cond_0
    new-instance v11, Lcom/metamoji/df/controller/StageFrozenDisposer;

    invoke-direct {v11, v9}, Lcom/metamoji/df/controller/StageFrozenDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    const/4 v9, 0x1

    .line 2468
    :try_start_0
    iget-boolean v12, v1, Lcom/metamoji/nt/NtPageController;->_isOnPurging:Z

    if-nez v12, :cond_1

    .line 2469
    invoke-virtual {v1, v1}, Lcom/metamoji/nt/NtPageController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v12

    .line 2470
    sget-object v13, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_THUMBNAIL:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object v13, v12, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 2471
    invoke-virtual {v1, v12}, Lcom/metamoji/nt/NtPageController;->restoreTemporary(Lcom/metamoji/df/controller/ControllerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    goto :goto_0

    :cond_1
    move-object v12, v10

    .line 2475
    :goto_0
    :try_start_1
    new-instance v13, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    sget-object v14, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_THUMBNAIL:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-direct {v13, v14}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;-><init>(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    .line 2476
    invoke-virtual {v1, v13, v9}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    .line 2478
    iget v13, v2, Lcom/metamoji/cm/SizeF;->width:F

    mul-float v13, v13, p1

    .line 2479
    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    mul-float v2, v2, p1

    .line 2487
    invoke-virtual {v1, v8}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_2

    .line 2489
    invoke-virtual {v1, v14}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    :cond_2
    move-object v14, v10

    :goto_1
    if-eqz v4, :cond_6

    .line 2504
    :try_start_2
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v16, :cond_3

    .line 2505
    :try_start_3
    invoke-static {v4, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :cond_3
    move v7, v9

    .line 2507
    :goto_2
    :try_start_4
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v16, :cond_4

    .line 2508
    :try_start_5
    invoke-static {v4, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 2510
    :goto_3
    :try_start_6
    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v16, :cond_5

    .line 2511
    :try_start_7
    invoke-static {v4, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :cond_5
    move v5, v9

    .line 2513
    :goto_4
    :try_start_8
    const-string/jumbo v15, "visiblePersonalLayerIdSuffixDic"

    invoke-static {v4, v15}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move/from16 v16, v9

    .line 2514
    :try_start_9
    const-string/jumbo v9, "visibleTeacherPersonalLayerIdSuffixDic"

    invoke-static {v4, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    goto :goto_5

    :catchall_0
    move-exception v0

    move/from16 v16, v9

    goto/16 :goto_f

    :cond_6
    move/from16 v16, v9

    move-object v9, v10

    move-object v15, v9

    move/from16 v5, v16

    move v7, v5

    const/4 v6, 0x0

    .line 2523
    :goto_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move/from16 v17, v5

    .line 2524
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2525
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v19, v11

    .line 2526
    :try_start_a
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v20, v12

    const/4 v12, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_6
    if-ge v12, v11, :cond_f

    move/from16 v23, v11

    .line 2527
    :try_start_b
    invoke-virtual {v1, v12}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v11

    move/from16 v24, v12

    .line 2528
    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v12

    .line 2529
    const-string/jumbo v0, "system:edit"

    move/from16 v25, v2

    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2531
    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v0

    if-eq v7, v0, :cond_e

    .line 2532
    invoke-virtual {v11, v7}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    move-object/from16 v21, v11

    goto/16 :goto_9

    .line 2535
    :cond_7
    const-string/jumbo v0, "system:common"

    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2537
    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v0

    if-eq v6, v0, :cond_e

    .line 2538
    invoke-virtual {v11, v6}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    move-object/from16 v22, v11

    goto :goto_9

    .line 2541
    :cond_8
    const-string/jumbo v0, "system:teacher_personal"

    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2543
    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/metamoji/forSchool/ScSchoolUtils;->isOutputTargetTeacherPersonalLayerId(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v17, :cond_9

    if-eqz v0, :cond_9

    move/from16 v2, v16

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 2545
    :goto_7
    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v12

    if-eq v2, v12, :cond_e

    if-eqz v17, :cond_a

    if-eqz v0, :cond_a

    move/from16 v2, v16

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    .line 2546
    :goto_8
    invoke-virtual {v11, v2}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    if-eqz v17, :cond_b

    if-eqz v0, :cond_b

    .line 2548
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2550
    :cond_b
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2553
    :cond_c
    const-string/jumbo v0, "system:personal"

    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2556
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12, v0, v15}, Lcom/metamoji/forSchool/ScSchoolUtils;->isOutputTargetPersonalLayerId(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)Z

    move-result v0

    .line 2557
    invoke-virtual {v11}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v2

    if-eq v0, v2, :cond_e

    .line 2558
    invoke-virtual {v11, v0}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    if-eqz v0, :cond_d

    .line 2560
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2562
    :cond_d
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_9
    add-int/lit8 v12, v24, 0x1

    move/from16 v11, v23

    move/from16 v2, v25

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v10, v20

    goto/16 :goto_11

    :cond_f
    move/from16 v25, v2

    if-eqz v14, :cond_10

    .line 2572
    invoke-virtual {v14}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v0

    .line 2573
    invoke-virtual {v14, v3}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    .line 2578
    :goto_a
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 2581
    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_b

    :cond_11
    const/4 v2, 0x0

    :goto_b
    if-eq v2, v3, :cond_12

    .line 2587
    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    .line 2592
    :cond_12
    invoke-virtual {v1, v4}, Lcom/metamoji/nt/NtPageController;->takeSnapshotBeforeProcessForPersonalTemplateLayer(Ljava/util/Map;)V

    .line 2596
    new-instance v4, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v4}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v8, 0x0

    .line 2597
    invoke-virtual {v4, v8}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 2598
    invoke-virtual {v4, v8}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 2599
    invoke-virtual {v4, v13}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    move/from16 v9, v25

    .line 2600
    invoke-virtual {v4, v9}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 2601
    invoke-virtual {v4}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v11

    const/4 v12, 0x0

    .line 2602
    invoke-virtual {v11, v12}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    if-nez p4, :cond_13

    .line 2604
    sget-object v12, Lcom/metamoji/df/sprite/PaintSolid;->WHITE:Lcom/metamoji/df/sprite/PaintSolid;

    goto :goto_c

    :cond_13
    move-object/from16 v12, p4

    .line 2606
    :goto_c
    invoke-virtual {v11, v12}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 2607
    invoke-virtual {v11, v8, v8, v13, v9}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 2609
    new-instance v8, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-direct {v8}, Lcom/metamoji/df/sprite/Rasterizer;-><init>()V

    float-to-int v11, v13

    .line 2610
    invoke-virtual {v8, v11}, Lcom/metamoji/df/sprite/Rasterizer;->setWidth(I)V

    float-to-int v9, v9

    .line 2611
    invoke-virtual {v8, v9}, Lcom/metamoji/df/sprite/Rasterizer;->setHeight(I)V

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v4

    move-object/from16 v23, v8

    .line 2613
    invoke-virtual/range {v23 .. v28}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 2614
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getBindSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v24

    move-object/from16 v4, p2

    iget v8, v4, Landroid/graphics/PointF;->x:F

    neg-float v8, v8

    mul-float v25, v8, p1

    iget v4, v4, Landroid/graphics/PointF;->y:F

    neg-float v4, v4

    mul-float v26, v4, p1

    move/from16 v28, p1

    move/from16 v27, p1

    invoke-virtual/range {v23 .. v28}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 2615
    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq v2, v3, :cond_14

    .line 2619
    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    :cond_14
    if-eqz v14, :cond_15

    .line 2622
    invoke-virtual {v14, v0}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    :cond_15
    move-object/from16 v0, v21

    if-eqz v0, :cond_16

    xor-int/lit8 v2, v7, 0x1

    .line 2628
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    :cond_16
    move-object/from16 v0, v22

    if-eqz v0, :cond_17

    xor-int/lit8 v2, v6, 0x1

    .line 2632
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    .line 2635
    :cond_17
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtLayerController;

    move/from16 v3, v16

    .line 2636
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    const/16 v16, 0x1

    goto :goto_d

    .line 2638
    :cond_18
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtLayerController;

    const/4 v3, 0x0

    .line 2639
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    goto :goto_e

    .line 2642
    :cond_19
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->takeSnapshotAfterProcessForPersonalTemplateLayer()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2646
    :try_start_c
    iget-boolean v0, v1, Lcom/metamoji/nt/NtPageController;->_isOnPurging:Z

    if-nez v0, :cond_1a

    move-object/from16 v10, v20

    .line 2647
    invoke-virtual {v1, v10}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 2651
    :cond_1a
    invoke-virtual/range {v19 .. v19}, Lcom/metamoji/df/controller/StageFrozenDisposer;->dispose()V

    .line 2655
    new-instance v0, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    sget-object v2, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-direct {v0, v2}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;-><init>(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    const/4 v3, 0x1

    .line 2656
    invoke-virtual {v1, v0, v3}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    return-object v4

    :catchall_2
    move-exception v0

    goto :goto_10

    :catchall_3
    move-exception v0

    :goto_f
    move-object/from16 v19, v11

    :goto_10
    move-object v10, v12

    .line 2646
    :goto_11
    :try_start_d
    iget-boolean v2, v1, Lcom/metamoji/nt/NtPageController;->_isOnPurging:Z

    if-nez v2, :cond_1b

    .line 2647
    invoke-virtual {v1, v10}, Lcom/metamoji/nt/NtPageController;->turnInTemporary(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 2649
    :cond_1b
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_12

    :catchall_5
    move-exception v0

    move-object/from16 v19, v11

    .line 2651
    :goto_12
    invoke-virtual/range {v19 .. v19}, Lcom/metamoji/df/controller/StageFrozenDisposer;->dispose()V

    .line 2655
    new-instance v2, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    sget-object v3, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-direct {v2, v3}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;-><init>(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    const/4 v3, 0x1

    .line 2656
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtPageController;->broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V

    .line 2657
    throw v0
.end method

.method public takeSnapshot(FZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 2385
    new-instance v2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtPageController;->takeSnapshot(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public takeSnapshotAfterProcessForPersonalTemplateLayer()V
    .locals 5

    .line 2703
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2705
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    return-void

    .line 2710
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2711
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    .line 2712
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v0

    .line 2714
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 2716
    const-string/jumbo v1, "system:personal_template"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2717
    invoke-virtual {p0, v2, v1}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(ZLjava/lang/String;)V

    .line 2718
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->showPersonalTemplateLayer()V

    return-void

    .line 2720
    :cond_1
    const-string/jumbo v1, "system:edit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2721
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtPageController;->setLayersColorFaint(Z)V

    .line 2725
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hideCommonLayer()V

    .line 2727
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalLayer()V

    .line 2730
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hideTeacherPersonalLayer()V

    .line 2732
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtPageController;->isAllowVisiblePersonalTemplate(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2733
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->showPersonalTemplateLayer()V

    .line 2734
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->setColorFaintPersonalTemplateLayer(Z)V

    goto :goto_0

    .line 2737
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    .line 2740
    :goto_0
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtPageController;->setColorFaintEditLayer(Z)V

    :cond_3
    return-void

    .line 2744
    :cond_4
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 2745
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtPageController;->isAllowVisiblePersonalTemplate(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2746
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->showPersonalTemplateLayer()V

    .line 2747
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtPageController;->setColorFaintPersonalTemplateLayer(Z)V

    return-void

    .line 2750
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    return-void

    .line 2755
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    return-void
.end method

.method public takeSnapshotBeforeProcessForPersonalTemplateLayer(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2671
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    return-void

    .line 2675
    :cond_0
    const-string/jumbo v0, "visiblePersonalTemplateLayer"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2676
    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2678
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    return-void

    .line 2683
    :cond_1
    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2684
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 2685
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 2688
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2689
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->isAllowVisiblePersonalTemplate(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2690
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->showPersonalTemplateLayer()V

    const/4 p1, 0x0

    .line 2691
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->setColorFaintPersonalTemplateLayer(Z)V

    return-void

    .line 2694
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->hidePersonalTemplateLayer()V

    return-void
.end method

.method public takeSnapshotForSchool(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;Z)Landroid/graphics/Bitmap;
    .locals 7

    .line 4355
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->outputTargetSchoolLayerInfo()Ljava/util/Map;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 4356
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/nt/NtPageController;->takeSnapshot(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;ZLjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public takeSnapshotForSchool(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;ZLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .line 4366
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    .line 4367
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "visibleCommonLayer"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4368
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "visibleTeacherPersonalLayer"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    .line 4372
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 4374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 4375
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4377
    const-string/jumbo p6, "visiblePersonalLayerIdSuffixDic"

    invoke-interface {v6, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 4380
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/nt/NtPageController;->takeSnapshot(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;ZLjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public takeSnapshotForSchool(FZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 4339
    new-instance v2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public takeSnapshotForSchool(FZLjava/util/Map;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 4346
    new-instance v2, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/nt/NtPageController;->takeSnapshot(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;ZLjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public updatePersonalLayerInfoList()V
    .locals 11

    const/4 v0, 0x0

    .line 3065
    iput-object v0, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    .line 3067
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 3068
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 3071
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3072
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    .line 3073
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3074
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3075
    check-cast v2, Ljava/util/Map;

    .line 3077
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3078
    const-string v4, "TEACHER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 3081
    :cond_1
    const-string/jumbo v4, "user-list"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 3083
    monitor-enter v2

    .line 3084
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 3086
    const-string/jumbo v6, "user-name"

    invoke-static {v5, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3087
    const-string/jumbo v7, "user-id"

    invoke-static {v5, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3088
    const-string v8, "class-number"

    invoke-static {v5, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3089
    const-string v9, "login-name"

    invoke-static {v5, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 3091
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3092
    const-string v10, "layerName"

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3093
    const-string v6, "layerId"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3094
    const-string v6, "classNumber"

    invoke-interface {v9, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3095
    const-string v6, "loginName"

    invoke-interface {v9, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 3096
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3097
    iget-object v5, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3100
    :cond_3
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3105
    :cond_4
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3109
    :cond_5
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 3112
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 3115
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    .line 3117
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3118
    check-cast v1, Ljava/util/Map;

    .line 3119
    const-string v2, "group-name"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3120
    const-string v3, "group-id"

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3121
    const-string/jumbo v4, "user-list"

    invoke-static {v1, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 3123
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "TEACHER"

    .line 3124
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v1, :cond_7

    .line 3125
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3126
    const-string v5, "layerName"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    const-string v2, "layerId"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdByGroupId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3128
    const-string v2, "memberList"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3129
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3134
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 3137
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    .line 3139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3140
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3141
    check-cast v2, Ljava/util/Map;

    .line 3142
    const-string/jumbo v3, "user-list"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    .line 3144
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 3147
    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3148
    const-string v2, "layerName"

    sget v3, Lcom/metamoji/noteanytime/R$string;->School_Class:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3149
    const-string v2, "layerId"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerIdForClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3150
    const-string v2, "memberList"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_personalLayerInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3157
    :cond_b
    :goto_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtPageController$7;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtPageController$7;-><init>(Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 3

    .line 2119
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfPageController;->updateSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    .line 2120
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 2121
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    .line 2122
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 2123
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 2124
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtPageController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    :cond_0
    return-void
.end method

.method public updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 0

    return-void
.end method

.method public updateThumbnail(Z)V
    .locals 5

    .line 2305
    const-string/jumbo v0, "thumbModel"

    iget-boolean v1, p0, Lcom/metamoji/nt/NtPageController;->_isOnGettingThumbnail:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2311
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/nt/NtPageController;->_thumbnail_dirtyflag:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 2333
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPageController;->_isOnGettingThumbnail:Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 2338
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtPageController;->getPageListThumbnail(F)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2343
    invoke-static {v1}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;

    move-result-object v3

    .line 2344
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2345
    iget-object v1, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2347
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    const-string v4, "pagethumbnail"

    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 2348
    iget-object v4, p0, Lcom/metamoji/nt/NtPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v4, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 2351
    :cond_2
    const-string/jumbo v0, "v"

    invoke-interface {v1, v0, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 2352
    iput-boolean v2, p0, Lcom/metamoji/nt/NtPageController;->_thumbnail_dirtyflag:Z

    .line 2359
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtNoteController;->fireThumbnailChangeEvent(Lcom/metamoji/nt/NtPageController;)V

    .line 2361
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v3, Lcom/metamoji/nt/NtPageController$4;

    invoke-direct {v3, p0}, Lcom/metamoji/nt/NtPageController$4;-><init>(Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 2369
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/metamoji/nt/NtPageController;->_temporaryRestored:Z

    if-nez v0, :cond_4

    .line 2370
    invoke-interface {v1, p1}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    goto :goto_1

    .line 2374
    :cond_3
    const-string p1, "... bitmap is null : page-%d"

    invoke-virtual {p0}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2377
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/metamoji/nt/NtPageController;->_isOnGettingThumbnail:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v2, p0, Lcom/metamoji/nt/NtPageController;->_isOnGettingThumbnail:Z

    .line 2378
    throw p1
.end method

.method public workareaChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    return-void
.end method
