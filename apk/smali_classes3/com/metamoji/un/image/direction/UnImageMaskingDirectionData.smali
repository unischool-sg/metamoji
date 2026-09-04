.class public Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "UnImageMaskingDirectionData.java"


# static fields
.field private static final MMJUN_MODELPROPVALUE_IMAGEMASKINGDIRECTION_VERSION_1:I = 0x1

.field private static final MMJUN_MODELPROPVALUE_IMAGEMASKINGDIRECTION_VERSION_LATEST:I = 0x2

.field private static final MMJUN_MODELPROP_IMAGEMASKINGDIRECTION_HEIGHT:Ljava/lang/String; = "uh"

.field private static final MMJUN_MODELPROP_IMAGEMASKINGDIRECTION_IMAGE_OPACITY:Ljava/lang/String; = "io"

.field private static final MMJUN_MODELPROP_IMAGEMASKINGDIRECTION_MASK_HEIGHT:Ljava/lang/String; = "mh"

.field private static final MMJUN_MODELPROP_IMAGEMASKINGDIRECTION_MASK_OFFSET_X:Ljava/lang/String; = "mx"

.field private static final MMJUN_MODELPROP_IMAGEMASKINGDIRECTION_MASK_OFFSET_Y:Ljava/lang/String; = "my"

.field private static final MMJUN_MODELPROP_IMAGEMASKINGDIRECTION_MASK_QCURVE_PATH:Ljava/lang/String; = "mqp"

.field private static final MMJUN_MODELPROP_IMAGEMASKINGDIRECTION_MASK_WIDTH:Ljava/lang/String; = "mw"

.field private static final MMJUN_MODELPROP_IMAGEMASKINGDIRECTION_OFFSET_X:Ljava/lang/String; = "ux"

.field private static final MMJUN_MODELPROP_IMAGEMASKINGDIRECTION_OFFSET_Y:Ljava/lang/String; = "uy"

.field private static final MMJUN_MODELPROP_IMAGEMASKINGDIRECTION_WIDTH:Ljava/lang/String; = "uw"

.field private static final MMJUN_MODELTYPE_IMAGEMASKINGDIRECTION:Ljava/lang/String; = "imagemaskingdirection"


# instance fields
.field protected mAvailable:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->mAvailable:Z

    return-void
.end method

.method private getValue(Ljava/lang/String;F)F
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getDirectionAsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    float-to-double v1, p2

    .line 109
    invoke-interface {v0, p1, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result p1

    return p1
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 2

    .line 98
    const-string v0, "imagemaskingdirection"

    invoke-static {p0, v0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    invoke-static {p0, v0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;
    .locals 2

    .line 79
    invoke-static {}, Lcom/metamoji/nt/NtDocument;->isAzami()Z

    move-result v0

    const-string v1, "imagemaskingdirection"

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x2

    .line 82
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 83
    new-instance v0, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 86
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 88
    const-string v0, "!type"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private setValue(Ljava/lang/String;F)V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getDirectionAsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    float-to-double v1, p2

    .line 119
    invoke-interface {v0, p1, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->mAvailable:Z

    return-void
.end method


# virtual methods
.method public getDirectionAsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectionAsModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/df/model/IModel;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    .line 156
    const-string/jumbo v0, "uh"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getImageOpacity()F
    .locals 2

    .line 224
    const-string v0, "io"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMaskHeight()F
    .locals 2

    .line 192
    const-string v0, "mh"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMaskOffsetX()F
    .locals 2

    .line 165
    const-string v0, "mx"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMaskOffsetY()F
    .locals 2

    .line 174
    const-string v0, "my"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getMaskQCurvePathPoints()Lcom/metamoji/cm/PointArray;
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getDirectionAsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    const-string v1, "mqp"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaskWidth()F
    .locals 2

    .line 183
    const-string v0, "mw"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getOffsetX()F
    .locals 2

    .line 129
    const-string/jumbo v0, "ux"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getOffsetY()F
    .locals 2

    .line 138
    const-string/jumbo v0, "uy"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    .line 147
    const-string/jumbo v0, "uw"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->mAvailable:Z

    return v0
.end method

.method public setHeight(F)V
    .locals 1

    .line 160
    const-string/jumbo v0, "uh"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method public setImageOpacity(F)V
    .locals 1

    .line 228
    const-string v0, "io"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method public setMaskHeight(F)V
    .locals 1

    .line 196
    const-string v0, "mh"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method public setMaskOffsetX(F)V
    .locals 1

    .line 169
    const-string v0, "mx"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method public setMaskOffsetY(F)V
    .locals 1

    .line 178
    const-string v0, "my"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method public setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getDirectionAsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    const-string v0, "mqp"

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getDirectionAsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/PointArray;)V

    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->getDirectionAsModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setMaskWidth(F)V
    .locals 1

    .line 187
    const-string v0, "mw"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method public setOffsetX(F)V
    .locals 1

    .line 133
    const-string/jumbo v0, "ux"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method public setOffsetY(F)V
    .locals 1

    .line 142
    const-string/jumbo v0, "uy"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method public setWidth(F)V
    .locals 1

    .line 151
    const-string/jumbo v0, "uw"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;->setValue(Ljava/lang/String;F)V

    return-void
.end method
