.class Lcom/metamoji/nt/NtUnitController$5;
.super Ljava/lang/Object;
.source "NtUnitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitController;

.field final synthetic val$mediatype:Lcom/metamoji/df/controller/ControllerContext$MediaType;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1194
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitController$5;->this$0:Lcom/metamoji/nt/NtUnitController;

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitController$5;->val$mediatype:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1197
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController$5;->this$0:Lcom/metamoji/nt/NtUnitController;

    iget-object v0, v0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 1198
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController$5;->this$0:Lcom/metamoji/nt/NtUnitController;

    iget-boolean v0, v0, Lcom/metamoji/nt/NtUnitController;->_displayTag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController$5;->val$mediatype:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    sget-object v2, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne v0, v2, :cond_0

    .line 1200
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController$5;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    .line 1202
    sget-object v2, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    iget-object v3, p0, Lcom/metamoji/nt/NtUnitController$5;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/metamoji/ctold/CtDocTagManager;->getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1206
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1207
    iget-object v3, p0, Lcom/metamoji/nt/NtUnitController$5;->this$0:Lcom/metamoji/nt/NtUnitController;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitController;->getRotation()D

    move-result-wide v3

    const-wide v5, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v3, 0x2

    .line 1208
    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 1209
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v2, 0x0

    .line 1210
    aget v2, v3, v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    sub-double/2addr v4, v6

    .line 1211
    aget v1, v3, v1

    float-to-double v1, v1

    sub-double/2addr v1, v6

    .line 1214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ctold/tag/CtTagInstance;

    .line 1215
    new-instance v3, Lcom/metamoji/cm/RectEx;

    double-to-float v4, v4

    double-to-float v1, v1

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    double-to-float v2, v5

    invoke-direct {v3, v4, v1, v2, v2}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 1220
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController$5;->this$0:Lcom/metamoji/nt/NtUnitController;

    iget-object v1, v1, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/ctold/tag/CtTagInstance;->drawForSprite(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/cm/RectEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
