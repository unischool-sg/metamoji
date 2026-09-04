.class Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;
.super Ljava/lang/Object;
.source "DrSetExtraHandleVariationDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrSetExtraHandleVariationInternal"
.end annotation


# instance fields
.field private m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_handleIndex:I

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_nextVariation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private m_prevVariation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->handleIndex()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/df/model/IModel;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->nextVariation()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->prevVariation()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHandleIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->setHandleIndex(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->setNextVariation(Ljava/util/Map;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPrevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->setPrevVariation(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_handleIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;-><init>()V

    return-void
.end method

.method private elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method public static getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 126
    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method private handleIndex()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_handleIndex:I

    return v0
.end method

.method private model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method private nextVariation()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_nextVariation:Ljava/util/Map;

    return-object v0
.end method

.method private prevVariation()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_prevVariation:Ljava/util/Map;

    return-object v0
.end method

.method private setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method private setHandleIndex(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_handleIndex:I

    return-void
.end method

.method private setModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method private setNextVariation(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_nextVariation:Ljava/util/Map;

    return-void
.end method

.method private setPrevVariation(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_prevVariation:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 71
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_model:Lcom/metamoji/df/model/IModel;

    .line 74
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 77
    const-string v0, "h"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_handleIndex:I

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_handleIndex:I

    .line 80
    const-string v0, "n"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->dictionaryPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_nextVariation:Ljava/util/Map;

    .line 83
    const-string v0, "p"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->dictionaryPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_prevVariation:Ljava/util/Map;

    return-void
.end method

.method public saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "i"

    if-eqz v0, :cond_0

    .line 95
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 97
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public saveHandleIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 102
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_handleIndex:I

    const/4 v1, -0x1

    const-string v2, "h"

    if-eq v0, v1, :cond_0

    .line 103
    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void

    .line 105
    :cond_0
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public saveNextVariationToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_nextVariation:Ljava/util/Map;

    const-string v1, "n"

    if-eqz v0, :cond_0

    .line 111
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDictionaryPropertyForName(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 113
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public savePrevVariationToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->m_prevVariation:Ljava/util/Map;

    const-string v1, "p"

    if-eqz v0, :cond_0

    .line 119
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDictionaryPropertyForName(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 121
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->saveHandleIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->saveNextVariationToModel(Lcom/metamoji/df/model/IModel;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->savePrevVariationToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method
