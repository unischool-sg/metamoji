.class public Lcom/metamoji/un/pdf/UnPDFUnit;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnPDFUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/pdf/UnPDFUnit$UnPDFUndoPerformer;
    }
.end annotation


# static fields
.field public static final MODELPROPVALUE_PDFLOCATIONUNDO_VERSION_LATEST:I = 0x1

.field public static final MODELPROPVALUE_PDF_VERSION_LATEST:I = 0x1

.field public static final MODELPROP_PDFLOCATIONUNDO_NEW_OFFSET_X:Ljava/lang/String; = "nx"

.field public static final MODELPROP_PDFLOCATIONUNDO_NEW_OFFSET_Y:Ljava/lang/String; = "ny"

.field public static final MODELPROP_PDFLOCATIONUNDO_NEW_ORIENTATION:Ljava/lang/String; = "no"

.field public static final MODELPROP_PDFLOCATIONUNDO_NEW_SCALE:Ljava/lang/String; = "ns"

.field public static final MODELPROP_PDFLOCATIONUNDO_OLD_OFFSET_X:Ljava/lang/String; = "ox"

.field public static final MODELPROP_PDFLOCATIONUNDO_OLD_OFFSET_Y:Ljava/lang/String; = "oy"

.field public static final MODELPROP_PDFLOCATIONUNDO_OLD_ORIENTATION:Ljava/lang/String; = "oo"

.field public static final MODELPROP_PDFLOCATIONUNDO_OLD_SCALE:Ljava/lang/String; = "os"

.field public static final MODELPROP_PDF_OFFSET_X:Ljava/lang/String; = "offsetX"

.field public static final MODELPROP_PDF_OFFSET_Y:Ljava/lang/String; = "offsetY"

.field public static final MODELPROP_PDF_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final MODELPROP_PDF_PAGE:Ljava/lang/String; = "page"

.field public static final MODELPROP_PDF_SCALE:Ljava/lang/String; = "scale"

.field public static final MODELPROP_PDF_TEMPLATE:Ljava/lang/String; = "template"

.field public static final MODELPROP_PDF_TICKET:Ljava/lang/String; = "ticket"

.field public static final MODELTYPE:Ljava/lang/String; = "$pdf"

.field public static final MODELTYPE_PDFLOCATIONUNDO:Ljava/lang/String; = "pdflocationundo"

.field public static final MODEL_VERSION_LATEST:I = 0x1


# instance fields
.field private _password:Ljava/lang/String;

.field private _pdfdoc:Lcom/metamoji/cm/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/un/pdf/PdfDocumentRef;",
            ">;"
        }
    .end annotation
.end field

.field private _pdfpage:Lcom/metamoji/cm/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/un/pdf/text/PDFPageRef;",
            ">;"
        }
    .end annotation
.end field

.field private m_currentEditMode:Lcom/metamoji/nt/NtDocument$EditMode;

.field private m_currentMediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

.field private m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 66
    const-string p1, ""

    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_password:Ljava/lang/String;

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfdoc:Lcom/metamoji/cm/SharedReference;

    .line 69
    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfpage:Lcom/metamoji/cm/SharedReference;

    return-void
.end method

.method public static createNewPdfModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;IFFFF)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 143
    const-string v0, "$pdf"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 144
    const-string v0, "!version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 145
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string/jumbo v1, "unit"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unitId"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "ticket"

    invoke-interface {p0, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string p1, "page"

    invoke-interface {p0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 148
    const-string p1, "offsetX"

    float-to-double p2, p3

    invoke-interface {p0, p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 149
    const-string p1, "offsetY"

    float-to-double p2, p4

    invoke-interface {p0, p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 150
    const-string/jumbo p1, "scale"

    float-to-double p2, p5

    invoke-interface {p0, p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 151
    const-string p1, "orientation"

    float-to-double p2, p6

    invoke-interface {p0, p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-object p0
.end method

.method public static createPdfModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 167
    const-string v0, "$pdf"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 168
    const-string v0, "!version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 169
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string/jumbo v1, "unit"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unitId"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "ticket"

    invoke-interface {p0, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string p1, "page"

    invoke-interface {p0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method private getBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    .line 254
    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/AttachmentsManager;->getAttachment(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object p1

    return-object p1
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 120
    new-instance v0, Lcom/metamoji/un/pdf/UnPDFUnit$UnPDFUndoPerformer;

    invoke-direct {v0}, Lcom/metamoji/un/pdf/UnPDFUnit$UnPDFUndoPerformer;-><init>()V

    .line 121
    const-string v1, "pdflocationundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 128
    const-string v0, "pdflocationundo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private update()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfdoc:Lcom/metamoji/cm/SharedReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->close()V

    .line 264
    iput-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfdoc:Lcom/metamoji/cm/SharedReference;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfpage:Lcom/metamoji/cm/SharedReference;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->close()V

    .line 268
    iput-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfpage:Lcom/metamoji/cm/SharedReference;

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "ticket"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_document:Lcom/metamoji/df/controller/DfDocument;

    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_password:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/metamoji/un/pdf/text/UnPDFAttachmentsManagerKt;->getPdfDocument(Lcom/metamoji/df/controller/AttachmentsManager;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cm/SharedReference;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfdoc:Lcom/metamoji/cm/SharedReference;

    return-void

    .line 274
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    return-void
.end method

.method private updateBaseSprite()V
    .locals 10

    .line 318
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfdoc:Lcom/metamoji/cm/SharedReference;

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->pageNo()I

    move-result v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfdoc:Lcom/metamoji/cm/SharedReference;

    invoke-virtual {v1}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/pdf/PdfDocumentRef;

    .line 328
    invoke-virtual {v1}, Lcom/metamoji/un/pdf/PdfDocumentRef;->getDocument()Lcom/metamoji/df/sprite/pdf/PDFDocument;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/pdf/PDFDocument;->getPage(I)Lcom/metamoji/df/sprite/pdf/PDFPage;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getSize()Landroid/graphics/PointF;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v3, "offsetX"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 334
    iget-object v3, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v6, "offsetY"

    invoke-interface {v3, v6, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 335
    iget-object v6, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v7, "scale"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-interface {v6, v7, v8, v9}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 336
    iget-object v7, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v8, "orientation"

    invoke-interface {v7, v8, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 339
    new-instance v5, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v5}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 340
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v7, v5, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 341
    new-instance v2, Lcom/metamoji/cm/SizeF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v6

    iget v7, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v6

    invoke-direct {v2, v3, v7}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v2, v5, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    float-to-double v2, v4

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v7

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v7

    double-to-float v2, v2

    .line 342
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v5, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 344
    invoke-virtual {p0, v5}, Lcom/metamoji/un/pdf/UnPDFUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 345
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/metamoji/df/sprite/Sprite;->setScaleX(F)V

    .line 346
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/metamoji/df/sprite/Sprite;->setScaleY(F)V

    .line 348
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 349
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 350
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v4}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 351
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 352
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 357
    invoke-virtual {v1, v3, v3, v0}, Lcom/metamoji/df/sprite/Graphics;->drawPDFPage(FFLcom/metamoji/df/sprite/pdf/PDFPage;)V

    .line 358
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 360
    const-string v1, "UnPDFUnit:updateBaseSprite"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V
    .locals 3

    .line 184
    sget-object v0, Lcom/metamoji/un/pdf/UnPDFUnit$1;->$SwitchMap$com$metamoji$df$controller$AttachmentsModelVisitContext$VisitorCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getCommand()Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext$VisitorCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ticket"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 197
    const-string p0, "UnPDFUnit.visitModelForAttachments: unknown command."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getReplaceTable()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 193
    invoke-interface {p0, v2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 187
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;->getTickets()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public canFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfdoc:Lcom/metamoji/cm/SharedReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->close()V

    .line 234
    iput-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfdoc:Lcom/metamoji/cm/SharedReference;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfpage:Lcom/metamoji/cm/SharedReference;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Lcom/metamoji/cm/SharedReference;->close()V

    .line 239
    iput-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_pdfpage:Lcom/metamoji/cm/SharedReference;

    .line 242
    :cond_1
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 210
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 212
    iget-object p1, p1, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_currentMediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 213
    sget-object p1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_currentEditMode:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 215
    new-instance p1, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x1

    .line 216
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setPdfView(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 220
    invoke-direct {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->update()V

    .line 221
    invoke-direct {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->updateBaseSprite()V

    return-void
.end method

.method public isShowPDFFrameLine()Z
    .locals 2

    .line 534
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->EDITMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_currentEditMode:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_currentMediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 2

    .line 370
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    .line 372
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->isShowPDFFrameLine()Z

    move-result v0

    .line 374
    instance-of v1, p1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    if-eqz v1, :cond_0

    .line 375
    move-object v1, p1

    check-cast v1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    .line 376
    invoke-virtual {v1}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;->getMediaType()Lcom/metamoji/df/controller/ControllerContext$MediaType;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_currentMediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    goto :goto_0

    .line 377
    :cond_0
    instance-of v1, p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    if-eqz v1, :cond_1

    .line 378
    move-object v1, p1

    check-cast v1, Lcom/metamoji/nt/NtToolModeChangedContext;

    .line 379
    invoke-virtual {v1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_currentEditMode:Lcom/metamoji/nt/NtDocument$EditMode;

    .line 381
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->isShowPDFFrameLine()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->updatePDFFrameLine()V

    .line 384
    :cond_2
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    move-result p1

    return p1
.end method

.method public offsetX()F
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "offsetX"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public offsetY()F
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "offsetY"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public orientation()F
    .locals 4

    .line 526
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "orientation"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public pageNo()I
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "page"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public pdfImageWithScale(F)Landroid/graphics/Bitmap;
    .locals 6

    .line 480
    new-instance v0, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Rasterizer;-><init>()V

    .line 481
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Rasterizer;->setWidth(I)V

    .line 482
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Rasterizer;->setHeight(I)V

    .line 483
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, p1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 484
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public pdfSize()Lcom/metamoji/cm/SizeF;
    .locals 3

    .line 491
    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "performCommand( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 302
    invoke-super {p0, p1, p2}, Lcom/metamoji/nt/NtUnitController;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 306
    :cond_0
    sget-object p2, Lcom/metamoji/un/pdf/UnPDFUnit$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public performPDFLocationUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 449
    const-string v0, "ox"

    goto :goto_0

    :cond_0
    const-string v0, "nx"

    :goto_0
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 450
    const-string v1, "offsetX"

    if-eqz v0, :cond_1

    .line 451
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v1, v0}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_2

    .line 455
    const-string v0, "oy"

    goto :goto_2

    :cond_2
    const-string v0, "ny"

    :goto_2
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 456
    const-string v1, "offsetY"

    if-eqz v0, :cond_3

    .line 457
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v1, v0}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 459
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :goto_3
    if-eqz p1, :cond_4

    .line 461
    const-string v0, "os"

    goto :goto_4

    :cond_4
    const-string v0, "ns"

    :goto_4
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 462
    const-string/jumbo v1, "scale"

    if-eqz v0, :cond_5

    .line 463
    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v1, v0}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 465
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :goto_5
    if-eqz p1, :cond_6

    .line 467
    const-string p1, "oo"

    goto :goto_6

    :cond_6
    const-string p1, "no"

    :goto_6
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 468
    const-string p2, "orientation"

    if-eqz p1, :cond_7

    .line 469
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p2, p1}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 471
    :cond_7
    iget-object p1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 473
    :goto_7
    invoke-direct {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->updateBaseSprite()V

    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 109
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "pdflocationundo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/pdf/UnPDFUnit;->performPDFLocationUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    :cond_0
    return-void
.end method

.method public scale()F
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "scale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public setPDFLocationWithOffsetX(FFFFLcom/metamoji/df/controller/EditContext;)V
    .locals 16

    move-object/from16 v0, p0

    .line 413
    const-string v1, "pdflocationundo"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/pdf/UnPDFUnit$UnPDFUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 415
    iget-object v3, v0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v4, "offsetX"

    invoke-interface {v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 417
    const-string v5, "ox"

    invoke-interface {v1, v5, v3}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    :cond_0
    iget-object v3, v0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v5, "offsetY"

    invoke-interface {v3, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 421
    const-string v6, "oy"

    invoke-interface {v1, v6, v3}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    :cond_1
    iget-object v3, v0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v6, "scale"

    invoke-interface {v3, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 425
    const-string v7, "os"

    invoke-interface {v1, v7, v3}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 427
    :cond_2
    iget-object v3, v0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v7, "orientation"

    invoke-interface {v3, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 429
    const-string v8, "oo"

    invoke-interface {v1, v8, v3}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    move/from16 v3, p1

    float-to-double v8, v3

    .line 431
    const-string v3, "nx"

    invoke-interface {v1, v3, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    move/from16 v3, p2

    float-to-double v10, v3

    .line 432
    const-string v3, "ny"

    invoke-interface {v1, v3, v10, v11}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    move/from16 v3, p3

    float-to-double v12, v3

    .line 433
    const-string v3, "ns"

    invoke-interface {v1, v3, v12, v13}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    move/from16 v3, p4

    float-to-double v14, v3

    .line 434
    const-string v3, "no"

    invoke-interface {v1, v3, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    move-object/from16 v3, p5

    .line 435
    invoke-virtual {v3, v1, v2}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 437
    iget-object v1, v0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v4, v8, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 438
    iget-object v1, v0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v5, v10, v11}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 439
    iget-object v1, v0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v6, v12, v13}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 440
    iget-object v1, v0, Lcom/metamoji/un/pdf/UnPDFUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v1, v7, v14, v15}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 441
    invoke-direct {v0}, Lcom/metamoji/un/pdf/UnPDFUnit;->updateBaseSprite()V

    return-void
.end method

.method public updatePDFFrameLine()V
    .locals 6

    .line 393
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 395
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->isShowPDFFrameLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getScaleX()F

    move-result v1

    const/4 v2, 0x0

    .line 399
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 400
    new-instance v2, Lcom/metamoji/df/sprite/PaintSolid;

    const v3, 0xddddee

    invoke-direct {v2, v3}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    const/high16 v2, 0x3f000000    # 0.5f

    .line 401
    invoke-virtual {v0, v2}, Lcom/metamoji/df/sprite/Graphics;->setLineAlpha(F)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 402
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 403
    iget-object v1, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/pdf/UnPDFUnit;->m_pdfSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    :cond_0
    return-void
.end method
