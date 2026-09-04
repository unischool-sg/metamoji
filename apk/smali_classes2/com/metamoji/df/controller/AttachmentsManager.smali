.class public Lcom/metamoji/df/controller/AttachmentsManager;
.super Ljava/lang/Object;
.source "AttachmentsManager.java"

# interfaces
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/AttachmentsManager$ModelDef;,
        Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;,
        Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;,
        Lcom/metamoji/df/controller/AttachmentsManager$IForeachAttachmentModelDelegate;
    }
.end annotation


# static fields
.field private static final BITMAPEX_CACHE_TYPE:Ljava/lang/String; = "bitmaex"

.field static final MMJDF_MODELPROPVALUE_ATTACHMENTSSHAREDIRECTION_VERSION_LATEST:I = 0x1

.field static final MMJDF_MODELPROP_ATTACHMENTSSHAREDIRECTION_TABLE:Ljava/lang/String; = "t"

.field static final MMJDF_MODELTYPE_ATTACHMENTSSHAREDIRECTION:Ljava/lang/String; = "attachsharedirection"

.field public static final MMJNT_IMAGE_SIZE_LONG_SIDE:I = 0x2d0

.field public static final MMJNT_IMAGE_SIZE_LONG_SIDE_HD:I = 0x5a0

.field public static final MMJNT_IMAGE_SIZE_SHORT_SIDE:I = 0x21c

.field public static final MMJNT_IMAGE_SIZE_SHORT_SIDE_HD:I = 0x438

.field public static final MODELTYPE_ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final MODELTYPE_ATTACHMENTS:Ljava/lang/String; = "attachments"

.field public static final VERSION_ATTACHMENT:I = 0x1

.field public static final VERSION_ATTACHMENTS:I = 0x1


# instance fields
.field private _bmpLock:I

.field private _cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/SharedCloseableBase;",
            ">;"
        }
    .end annotation
.end field

.field private _hold:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/ISharedResource;",
            ">;"
        }
    .end annotation
.end field

.field private _holdTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _lockedBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/cm/BitmapEx;",
            ">;>;"
        }
    .end annotation
.end field

.field private _mapModel:Lcom/metamoji/df/model/IModel;

.field private _model:Lcom/metamoji/df/model/IModel;

.field m_directionHandlerID:Ljava/lang/String;

.field m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;


# direct methods
.method static bridge synthetic -$$Nest$fget_mapModel(Lcom/metamoji/df/controller/AttachmentsManager;)Lcom/metamoji/df/model/IModel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    return-object p0
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_holdTypes:Ljava/util/HashSet;

    .line 447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_hold:Ljava/util/Map;

    const/4 v0, 0x0

    .line 563
    iput v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_bmpLock:I

    .line 175
    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_model:Lcom/metamoji/df/model/IModel;

    .line 177
    const-string v0, "attachments"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    if-nez p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x1

    .line 180
    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 181
    iget-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_model:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_0
    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 185
    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionHandlerID:Ljava/lang/String;

    return-void
.end method

.method private _makeTicket(Lcom/metamoji/cm/Blob;)Ljava/lang/String;
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x49

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v1

    sget-object v2, Lcom/metamoji/cm/HashGenerator$Algorithm;->MD5:Lcom/metamoji/cm/HashGenerator$Algorithm;

    invoke-static {v1, v2, v0}, Lcom/metamoji/cm/HashGenerator;->createHashString([BLcom/metamoji/cm/HashGenerator$Algorithm;Ljava/lang/Appendable;)V

    .line 210
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    sget-object v1, Lcom/metamoji/cm/HashGenerator$Algorithm;->SHA1:Lcom/metamoji/cm/HashGenerator$Algorithm;

    invoke-static {p1, v1, v0}, Lcom/metamoji/cm/HashGenerator;->createHashString([BLcom/metamoji/cm/HashGenerator$Algorithm;Ljava/lang/Appendable;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static collectTicket(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 385
    :goto_0
    new-instance v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;

    sget-object v1, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->CollectTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    invoke-direct {v0, p2, v1, p3}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;Ljava/util/Set;)V

    .line 386
    invoke-virtual {p1, p0, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-object p3
.end method

.method public static collectTicket(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 399
    :goto_0
    new-instance v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;

    sget-object v1, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->CollectTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    invoke-direct {v0, p2, v1, p3}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;Ljava/util/Set;)V

    .line 400
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 401
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p3
.end method

.method public static getBitmapLongSideSize()I
    .locals 1

    .line 167
    invoke-static {}, Lcom/metamoji/df/controller/AttachmentsManager;->isHighResolution()Z

    const/16 v0, 0x5a0

    return v0
.end method

.method public static getBitmapLongSideSize(Z)I
    .locals 0

    const/16 p0, 0x5a0

    return p0
.end method

.method public static getBitmapShortSideSize()I
    .locals 1

    .line 160
    invoke-static {}, Lcom/metamoji/df/controller/AttachmentsManager;->isHighResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x438

    return v0

    :cond_0
    const/16 v0, 0x21c

    return v0
.end method

.method public static getBitmapShortSideSize(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x438

    return p0

    :cond_0
    const/16 p0, 0x21c

    return p0
.end method

.method public static getMimeTypeFromModel(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;
    .locals 1

    .line 767
    const-string v0, "$mimetype"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 770
    const-string v0, "$mimeType"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private handleSharingDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 2

    .line 713
    new-instance v0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    const-class v1, Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-direct {v0, p1}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 714
    new-instance p1, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;-><init>(Lcom/metamoji/df/controller/AttachmentsManager;Lcom/metamoji/df/controller/AttachmentsManager-IA;)V

    .line 715
    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->forEachAttachmentModel(Lcom/metamoji/df/controller/AttachmentsManager$IForeachAttachmentModelDelegate;)V

    .line 717
    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 718
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    :cond_0
    return-void
.end method

.method public static isHighResolution()Z
    .locals 3

    .line 153
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "GenerateHDImage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private removeCache(Ljava/lang/String;Lcom/metamoji/cm/SharedCloseableBase;)V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_cache:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/ISharedResource;

    if-eqz v0, :cond_1

    if-ne v0, p2, :cond_1

    .line 524
    iget-object p2, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_cache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public static replaceTicket(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 416
    new-instance v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;

    sget-object v1, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ReplaceTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    invoke-direct {v0, p2, v1, p3}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;Ljava/util/Map;)V

    .line 417
    invoke-virtual {p1, p0, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void
.end method

.method public static replaceTicket(Ljava/util/List;Lcom/metamoji/df/controller/ModelTraverser;Lcom/metamoji/df/controller/IModelVisitor;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Lcom/metamoji/df/controller/ModelTraverser;",
            "Lcom/metamoji/df/controller/IModelVisitor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 421
    new-instance v0, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;

    sget-object v1, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ReplaceTicket:Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    invoke-direct {v0, p2, v1, p3}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;Ljava/util/Map;)V

    if-eqz p0, :cond_0

    .line 423
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/df/model/IModel;

    .line 424
    invoke-virtual {p1, p2, v0}, Lcom/metamoji/df/controller/ModelTraverser;->traverse(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_cache:Ljava/util/Map;

    .line 193
    invoke-virtual {p0}, Lcom/metamoji/df/controller/AttachmentsManager;->releaseAllHoldCache()V

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/df/controller/AttachmentsManager;->unmakeDirectable()V

    return-void
.end method

.method public getAllTickets()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getAttachment(Ljava/lang/String;)Lcom/metamoji/cm/Blob;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 298
    const-string v0, "$blob"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBitmapAttachment(Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/cm/BitmapEx;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 581
    :cond_0
    new-instance v1, Lcom/metamoji/df/controller/AttachmentsManager$1;

    invoke-direct {v1, p0}, Lcom/metamoji/df/controller/AttachmentsManager$1;-><init>(Lcom/metamoji/df/controller/AttachmentsManager;)V

    const-string v2, "bitmaex"

    invoke-virtual {p0, p1, v2, v1}, Lcom/metamoji/df/controller/AttachmentsManager;->getData(Ljava/lang/String;Ljava/lang/String;Landroidx/arch/core/util/Function;)Lcom/metamoji/cm/SharedReference;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_lockedBitmaps:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 598
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method

.method public getCache(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/metamoji/cm/SharedReference<",
            "TT;>;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_cache:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 468
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/controller/AttachmentsManager;->keyForCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 469
    iget-object p2, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_cache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/SharedCloseableBase;

    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedCloseableBase;->isClosed()Z

    move-result p2

    if-nez p2, :cond_1

    .line 471
    new-instance p2, Lcom/metamoji/cm/SharedReference;

    check-cast p1, Lcom/metamoji/cm/SharedCloseable;

    invoke-direct {p2, p1}, Lcom/metamoji/cm/SharedReference;-><init>(Lcom/metamoji/cm/SharedCloseable;)V

    return-object p2

    :cond_1
    return-object v1
.end method

.method public getData(Ljava/lang/String;Ljava/lang/String;Landroidx/arch/core/util/Function;)Lcom/metamoji/cm/SharedReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/arch/core/util/Function<",
            "Lcom/metamoji/cm/Blob;",
            "TT;>;)",
            "Lcom/metamoji/cm/SharedReference<",
            "TT;>;"
        }
    .end annotation

    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/controller/AttachmentsManager;->getCache(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 535
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/AttachmentsManager;->getAttachment(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 540
    :cond_1
    invoke-interface {p3, v0}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/Closeable;

    .line 541
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/df/controller/AttachmentsManager;->setCache(Ljava/lang/String;Ljava/lang/String;Ljava/io/Closeable;)Lcom/metamoji/cm/SharedReference;

    move-result-object p1

    return-object p1
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionHandlerID:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 320
    const-string v0, "$filename"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 309
    invoke-static {p1}, Lcom/metamoji/df/controller/AttachmentsManager;->getMimeTypeFromModel(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 743
    invoke-interface {p2, v0}, Lcom/metamoji/ns/direction/INsDirectionObserver;->markLastReceivedDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;)V

    .line 745
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 746
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->isUnknownDataFound()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 749
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v1

    .line 750
    invoke-static {v1}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    invoke-direct {p0, v0, p2}, Lcom/metamoji/df/controller/AttachmentsManager;->handleSharingDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    goto :goto_0

    .line 753
    :cond_1
    const-string v1, "attachments manager received unknown direction"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 754
    invoke-interface {p2, v0}, Lcom/metamoji/ns/direction/INsDirectionObserver;->unknownDataFound(Lcom/metamoji/ns/direction/NsReceivedDirection;)V

    goto :goto_0

    .line 757
    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public holdCache(Ljava/lang/String;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_holdTypes:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public importAttachments(Ljava/util/HashSet;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/ModelManagerImportContext;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/df/model/ModelManagerImportContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 335
    iget-object v1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    if-nez p3, :cond_0

    .line 337
    new-instance p3, Lcom/metamoji/df/model/ModelManagerImportContext;

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-direct {p3, v2, v1}, Lcom/metamoji/df/model/ModelManagerImportContext;-><init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/model/IModelManager;)V

    .line 340
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 341
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 342
    invoke-interface {v3}, Lcom/metamoji/df/model/IModel;->isOnMemory()Z

    move-result v4

    .line 343
    const-string v5, "$blob"

    invoke-interface {v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v5

    if-nez v5, :cond_2

    .line 345
    const-string v2, "blob not found in attachment model on import"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_2
    invoke-direct {p0, v5}, Lcom/metamoji/df/controller/AttachmentsManager;->_makeTicket(Lcom/metamoji/cm/Blob;)Ljava/lang/String;

    move-result-object v5

    .line 348
    iget-object v6, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v6, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    .line 350
    invoke-interface {v1, v3, v6, p3}, Lcom/metamoji/df/model/IModelManager;->importModel(Lcom/metamoji/df/model/IModel;ZLcom/metamoji/df/model/ModelManagerImportContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    .line 351
    iget-object v7, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v7, v5, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 353
    :cond_3
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 356
    invoke-interface {v3, v2}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public keyForCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public lockBitmaps()V
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_lockedBitmaps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_lockedBitmaps:Ljava/util/List;

    .line 610
    :cond_0
    iget v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_bmpLock:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_bmpLock:I

    return-void
.end method

.method public makeDirectableWithDirectionManager(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/metamoji/df/controller/AttachmentsManager;->unmakeDirectable()V

    .line 642
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 643
    iput-object p2, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionHandlerID:Ljava/lang/String;

    .line 644
    invoke-virtual {p1, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    return-void
.end method

.method public purgeAttachment(Ljava/lang/String;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 251
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->purgeMemory(Z)V

    :cond_0
    return-void
.end method

.method public registerAttachment(Lcom/metamoji/cm/Blob;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 224
    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/AttachmentsManager;->_makeTicket(Lcom/metamoji/cm/Blob;)Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    const-string v2, "attachment"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const/4 v2, 0x1

    .line 229
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 230
    const-string v2, "$blob"

    invoke-interface {v1, v2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    if-eqz p2, :cond_0

    .line 232
    const-string p1, "$mimetype"

    invoke-interface {v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 235
    const-string p1, "$filename"

    invoke-interface {v1, p1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method

.method public releaseAllHoldCache()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_hold:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/ISharedResource;

    .line 554
    invoke-interface {v1}, Lcom/metamoji/cm/ISharedResource;->release()V

    goto :goto_0

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_hold:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeUnusedAttachments(Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 263
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 264
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x21

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 268
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 269
    iget-object v5, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v5, v4}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public sendSharingDirectionOfTickets(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;

    move-result-object v0

    .line 674
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 675
    iget-object v3, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_mapModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v3, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 677
    invoke-virtual {v0, v3, v2}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->addAttachmentModel(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 682
    iget-object v2, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentsShareDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionHandlerID:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_2
    return-void

    .line 668
    :cond_3
    const-string p1, "AttachmentsManager.sendSharingDirectionOfTickets: should be directable."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 669
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "m_directionManager==null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCache(Ljava/lang/String;Ljava/lang/String;Ljava/io/Closeable;)Lcom/metamoji/cm/SharedReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/metamoji/cm/SharedReference<",
            "TT;>;"
        }
    .end annotation

    .line 487
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/controller/AttachmentsManager;->keyForCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 488
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_cache:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 489
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_cache:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_cache:Ljava/util/Map;

    .line 498
    :cond_2
    new-instance v0, Lcom/metamoji/cm/SharedCloseable;

    invoke-direct {v0, p3}, Lcom/metamoji/cm/SharedCloseable;-><init>(Ljava/lang/AutoCloseable;)V

    .line 500
    iget-object p3, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_cache:Ljava/util/Map;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_holdTypes:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 502
    iget-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_hold:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cm/ISharedResource;

    if-eqz p1, :cond_3

    .line 504
    invoke-interface {p1}, Lcom/metamoji/cm/ISharedResource;->release()V

    .line 506
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedCloseable;->addRef()V

    .line 507
    iget-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_hold:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    :cond_4
    new-instance p1, Lcom/metamoji/cm/SharedReference;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lcom/metamoji/cm/SharedReference;-><init>(Lcom/metamoji/cm/SharedCloseable;Z)V

    return-object p1
.end method

.method public unlockBitmaps()V
    .locals 2

    .line 617
    iget v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_bmpLock:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_bmpLock:I

    if-nez v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_lockedBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/SharedReference;

    .line 619
    invoke-virtual {v1}, Lcom/metamoji/cm/SharedReference;->close()V

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_lockedBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 622
    iput-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->_lockedBitmaps:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public unmakeDirectable()V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    :cond_0
    const/4 v0, 0x0

    .line 655
    iput-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 656
    iput-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager;->m_directionHandlerID:Ljava/lang/String;

    return-void
.end method
