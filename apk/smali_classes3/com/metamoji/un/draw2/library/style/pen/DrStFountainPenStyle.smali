.class public Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;
.super Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
.source "DrStFountainPenStyle.java"


# static fields
.field private static final MODEL_PROPERTY_BEGIN_RUN:Ljava/lang/String; = "b3"

.field private static final MODEL_PROPERTY_BEGIN_RUN_DELTA:Ljava/lang/String; = "b5"

.field private static final MODEL_PROPERTY_BEGIN_RUN_RATE:Ljava/lang/String; = "b4"

.field private static final MODEL_PROPERTY_BEGIN_STAY:Ljava/lang/String; = "b0"

.field private static final MODEL_PROPERTY_BEGIN_STAY_DELTA:Ljava/lang/String; = "b2"

.field private static final MODEL_PROPERTY_BEGIN_STAY_RATE:Ljava/lang/String; = "b1"

.field private static final MODEL_PROPERTY_END_RUN:Ljava/lang/String; = "e3"

.field private static final MODEL_PROPERTY_END_RUN_DELTA:Ljava/lang/String; = "e5"

.field private static final MODEL_PROPERTY_END_RUN_RATE:Ljava/lang/String; = "e4"

.field private static final MODEL_PROPERTY_END_STAY:Ljava/lang/String; = "e0"

.field private static final MODEL_PROPERTY_END_STAY_DELTA:Ljava/lang/String; = "e2"

.field private static final MODEL_PROPERTY_END_STAY_RATE:Ljava/lang/String; = "e1"

.field private static final MODEL_PROPERTY_INK_COLORS:Ljava/lang/String; = "c"

.field private static final MODEL_PROPERTY_INK_TYPE:Ljava/lang/String; = "t"

.field private static final MODEL_PROPERTY_TAIL_RUN:Ljava/lang/String; = "t3"

.field private static final MODEL_PROPERTY_TAIL_RUN_DELTA:Ljava/lang/String; = "t5"

.field private static final MODEL_PROPERTY_TAIL_RUN_RATE:Ljava/lang/String; = "t4"

.field private static final MODEL_PROPERTY_TAIL_STAY:Ljava/lang/String; = "t0"

.field private static final MODEL_PROPERTY_TAIL_STAY_DELTA:Ljava/lang/String; = "t2"

.field private static final MODEL_PROPERTY_TAIL_STAY_RATE:Ljava/lang/String; = "t1"

.field private static final MODEL_PROPERTY_TRANS:Ljava/lang/String; = "r"


# instance fields
.field private m_beginRun:F

.field private m_beginRunDelta:F

.field private m_beginRunRate:F

.field private m_beginStay:F

.field private m_beginStayDelta:F

.field private m_beginStayRate:F

.field private m_endRun:F

.field private m_endRunDelta:F

.field private m_endRunRate:F

.field private m_endStay:F

.field private m_endStayDelta:F

.field private m_endStayRate:F

.field private m_inkColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

.field private m_tailRun:F

.field private m_tailRunDelta:F

.field private m_tailRunRate:F

.field private m_tailStay:F

.field private m_tailStayDelta:F

.field private m_tailStayRate:F

.field private m_trans:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;-><init>()V

    return-void
.end method

.method private checkEqualityOfInkColors(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 801
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkColors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 805
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 806
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkColors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->checkEquality(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public static checkFountainPenStyleModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 485
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->getPenTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newEmptyFountainPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 472
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->newEmptyPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 474
    const-string v0, "P"

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 476
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newFountainPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;
    .locals 1

    if-eqz p0, :cond_0

    .line 493
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->newEmptyFountainPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 494
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;-><init>()V

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->initWithModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    return-object p0
.end method

.method private saveBeginRun()V
    .locals 3

    .line 647
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 650
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRun:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "b3"

    if-eqz v1, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 653
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveBeginRunDelta()V
    .locals 3

    .line 667
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunDelta:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "b5"

    if-eqz v1, :cond_1

    .line 671
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 673
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveBeginRunRate()V
    .locals 3

    .line 657
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 660
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunRate:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "b4"

    if-eqz v1, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 663
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveBeginStay()V
    .locals 3

    .line 617
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStay:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "b0"

    if-eqz v1, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 623
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveBeginStayDelta()V
    .locals 3

    .line 637
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 640
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayDelta:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "b2"

    if-eqz v1, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 643
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveBeginStayRate()V
    .locals 3

    .line 627
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayRate:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "b1"

    if-eqz v1, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveEndRun()V
    .locals 3

    .line 708
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 711
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRun:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "e3"

    if-eqz v1, :cond_1

    .line 712
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 714
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveEndRunDelta()V
    .locals 3

    .line 728
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 731
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunDelta:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "e5"

    if-eqz v1, :cond_1

    .line 732
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveEndRunRate()V
    .locals 3

    .line 718
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 721
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunRate:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "e4"

    if-eqz v1, :cond_1

    .line 722
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveEndStay()V
    .locals 3

    .line 678
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 681
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStay:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "e0"

    if-eqz v1, :cond_1

    .line 682
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 684
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveEndStayDelta()V
    .locals 3

    .line 698
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 701
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayDelta:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "e2"

    if-eqz v1, :cond_1

    .line 702
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveEndStayRate()V
    .locals 3

    .line 688
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 691
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayRate:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "e1"

    if-eqz v1, :cond_1

    .line 692
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveInkColors()V
    .locals 4

    .line 594
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "c"

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkColors:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->checkEquality(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 598
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkColors:Ljava/util/List;

    .line 599
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->hexColorStringsFromColors(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 598
    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveInkType()V
    .locals 3

    .line 583
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    const-string/jumbo v2, "t"

    if-eq v0, v1, :cond_1

    .line 587
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveTailRun()V
    .locals 3

    .line 769
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 772
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRun:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string/jumbo v2, "t3"

    if-eqz v1, :cond_1

    .line 773
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 775
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveTailRunDelta()V
    .locals 3

    .line 789
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 792
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunDelta:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string/jumbo v2, "t5"

    if-eqz v1, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 795
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveTailRunRate()V
    .locals 3

    .line 779
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 782
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunRate:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string/jumbo v2, "t4"

    if-eqz v1, :cond_1

    .line 783
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 785
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveTailStay()V
    .locals 3

    .line 739
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 742
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStay:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string/jumbo v2, "t0"

    if-eqz v1, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 745
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveTailStayDelta()V
    .locals 3

    .line 759
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 762
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayDelta:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string/jumbo v2, "t2"

    if-eqz v1, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 765
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveTailStayRate()V
    .locals 3

    .line 749
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 752
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayRate:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string/jumbo v2, "t1"

    if-eqz v1, :cond_1

    .line 753
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 755
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveTrans()V
    .locals 3

    .line 606
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 609
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_trans:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "r"

    if-eqz v1, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 612
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private updateBeginRun(F)V
    .locals 0

    .line 533
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRun:F

    return-void
.end method

.method private updateBeginRunDelta(F)V
    .locals 0

    .line 539
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunDelta:F

    return-void
.end method

.method private updateBeginRunRate(F)V
    .locals 0

    .line 536
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunRate:F

    return-void
.end method

.method private updateBeginStay(F)V
    .locals 0

    .line 524
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStay:F

    return-void
.end method

.method private updateBeginStayDelta(F)V
    .locals 0

    .line 530
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayDelta:F

    return-void
.end method

.method private updateBeginStayRate(F)V
    .locals 0

    .line 527
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayRate:F

    return-void
.end method

.method private updateEndRun(F)V
    .locals 0

    .line 552
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRun:F

    return-void
.end method

.method private updateEndRunDelta(F)V
    .locals 0

    .line 558
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunDelta:F

    return-void
.end method

.method private updateEndRunRate(F)V
    .locals 0

    .line 555
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunRate:F

    return-void
.end method

.method private updateEndStay(F)V
    .locals 0

    .line 543
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStay:F

    return-void
.end method

.method private updateEndStayDelta(F)V
    .locals 0

    .line 549
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayDelta:F

    return-void
.end method

.method private updateEndStayRate(F)V
    .locals 0

    .line 546
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayRate:F

    return-void
.end method

.method private updateInkColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 516
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkColors:Ljava/util/List;

    return-void
.end method

.method private updateInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;)V
    .locals 1

    .line 502
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStFountainInkType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 510
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    return-void

    .line 507
    :cond_0
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->TWO_COLORS:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    return-void

    .line 504
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    return-void
.end method

.method private updateTailRun(F)V
    .locals 0

    .line 571
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRun:F

    return-void
.end method

.method private updateTailRunDelta(F)V
    .locals 0

    .line 577
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunDelta:F

    return-void
.end method

.method private updateTailRunRate(F)V
    .locals 0

    .line 574
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunRate:F

    return-void
.end method

.method private updateTailStay(F)V
    .locals 0

    .line 562
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStay:F

    return-void
.end method

.method private updateTailStayDelta(F)V
    .locals 0

    .line 568
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayDelta:F

    return-void
.end method

.method private updateTailStayRate(F)V
    .locals 0

    .line 565
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayRate:F

    return-void
.end method

.method private updateTrans(F)V
    .locals 0

    .line 520
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_trans:F

    return-void
.end method


# virtual methods
.method public beginRun()F
    .locals 1

    .line 328
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRun:F

    return v0
.end method

.method public beginRunDelta()F
    .locals 1

    .line 346
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunDelta:F

    return v0
.end method

.method public beginRunRate()F
    .locals 1

    .line 337
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunRate:F

    return v0
.end method

.method public beginStay()F
    .locals 1

    .line 301
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStay:F

    return v0
.end method

.method public beginStayDelta()F
    .locals 1

    .line 319
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayDelta:F

    return v0
.end method

.method public beginStayRate()F
    .locals 1

    .line 310
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayRate:F

    return v0
.end method

.method protected cloneWithScale_(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 0

    .line 202
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->newFountainPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    move-result-object p1

    .line 203
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;)V

    .line 204
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkColors:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkColors(Ljava/util/List;)V

    .line 206
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_trans:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTrans(F)V

    .line 207
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStay:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStay(F)V

    .line 208
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStayRate(F)V

    .line 209
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStayDelta(F)V

    .line 210
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRun:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRun(F)V

    .line 211
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRunRate(F)V

    .line 212
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRunDelta(F)V

    .line 213
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStay:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStay(F)V

    .line 214
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStayRate(F)V

    .line 215
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStayDelta(F)V

    .line 216
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRun:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRun(F)V

    .line 217
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRunRate(F)V

    .line 218
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRunDelta(F)V

    .line 219
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStay:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStay(F)V

    .line 220
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStayRate(F)V

    .line 221
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStayDelta(F)V

    .line 222
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRun:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRun(F)V

    .line 223
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRunRate(F)V

    .line 224
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRunDelta(F)V

    return-object p1
.end method

.method protected copyToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z
    .locals 1

    .line 231
    instance-of p2, p1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 235
    :cond_0
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 236
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;)V

    .line 237
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkColors:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkColors(Ljava/util/List;)V

    .line 239
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_trans:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTrans(F)V

    .line 240
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStay:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStay(F)V

    .line 241
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStayRate(F)V

    .line 242
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStayDelta(F)V

    .line 243
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRun:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRun(F)V

    .line 244
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRunRate(F)V

    .line 245
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRunDelta(F)V

    .line 246
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStay:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStay(F)V

    .line 247
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStayRate(F)V

    .line 248
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStayDelta(F)V

    .line 249
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRun:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRun(F)V

    .line 250
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRunRate(F)V

    .line 251
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRunDelta(F)V

    .line 252
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStay:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStay(F)V

    .line 253
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStayRate(F)V

    .line 254
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStayDelta(F)V

    .line 255
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRun:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRun(F)V

    .line 256
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunRate:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRunRate(F)V

    .line 257
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunDelta:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRunDelta(F)V

    return v0
.end method

.method public endRun()F
    .locals 1

    .line 383
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRun:F

    return v0
.end method

.method public endRunDelta()F
    .locals 1

    .line 401
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunDelta:F

    return v0
.end method

.method public endRunRate()F
    .locals 1

    .line 392
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunRate:F

    return v0
.end method

.method public endStay()F
    .locals 1

    .line 356
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStay:F

    return v0
.end method

.method public endStayDelta()F
    .locals 1

    .line 374
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayDelta:F

    return v0
.end method

.method public endStayRate()F
    .locals 1

    .line 365
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayRate:F

    return v0
.end method

.method protected init_()Z
    .locals 31

    move-object/from16 v0, p0

    .line 73
    invoke-super {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->init_()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 74
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 78
    :cond_0
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    const/4 v4, 0x1

    .line 79
    new-array v5, v4, [Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 102
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 104
    const-string/jumbo v6, "t"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v6, v1, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    .line 107
    const-string v6, "c"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 109
    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/color/DrUtColorUtility;->colorsFromHexColorStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 110
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 111
    :cond_1
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 112
    new-array v2, v4, [Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    .line 117
    :cond_2
    const-string v2, "r"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v2, v7, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v2

    .line 118
    const-string v3, "b0"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    invoke-static {v3, v7, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v3

    .line 119
    const-string v6, "b1"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v6

    .line 120
    const-string v8, "b2"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-static {v8, v7, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v8

    .line 121
    const-string v9, "b3"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v9

    .line 122
    const-string v10, "b4"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v11

    invoke-static {v10, v7, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v10

    .line 123
    const-string v11, "b5"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v12

    invoke-static {v11, v7, v12}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v11

    .line 124
    const-string v12, "e0"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v13

    invoke-static {v12, v7, v13}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v12

    .line 125
    const-string v13, "e1"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v14

    invoke-static {v13, v7, v14}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v13

    .line 126
    const-string v14, "e2"

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v15

    invoke-static {v14, v7, v15}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v14

    .line 127
    const-string v15, "e3"

    move/from16 v16, v4

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v15, v7, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v4

    .line 128
    const-string v15, "e4"

    move-object/from16 v17, v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v15, v7, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 129
    const-string v15, "e5"

    move/from16 v18, v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v15, v7, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 130
    const-string/jumbo v15, "t0"

    move/from16 v19, v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v15, v7, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 131
    const-string/jumbo v15, "t1"

    move/from16 v20, v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v15, v7, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 132
    const-string/jumbo v15, "t2"

    move/from16 v21, v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v15, v7, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 133
    const-string/jumbo v15, "t3"

    move/from16 v22, v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v15, v7, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 134
    const-string/jumbo v15, "t4"

    move/from16 v23, v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v15, v7, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 135
    const-string/jumbo v15, "t5"

    move/from16 v24, v1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v15, v7, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v7

    move/from16 v30, v7

    move-object/from16 v1, v17

    move/from16 v15, v19

    move/from16 v25, v20

    move/from16 v26, v21

    move/from16 v27, v22

    move/from16 v28, v23

    move/from16 v29, v24

    move v7, v2

    move/from16 v2, v18

    goto :goto_0

    :cond_3
    move/from16 v16, v4

    move v2, v7

    move v3, v2

    move v4, v3

    move v6, v4

    move v8, v6

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v25, v15

    move/from16 v26, v25

    move/from16 v27, v26

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    .line 139
    :goto_0
    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;)V

    .line 140
    invoke-direct {v0, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateInkColors(Ljava/util/List;)V

    .line 142
    invoke-direct {v0, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTrans(F)V

    .line 143
    invoke-direct {v0, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginStay(F)V

    .line 144
    invoke-direct {v0, v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginStayRate(F)V

    .line 145
    invoke-direct {v0, v8}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginStayDelta(F)V

    .line 146
    invoke-direct {v0, v9}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginRun(F)V

    .line 147
    invoke-direct {v0, v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginRunRate(F)V

    .line 148
    invoke-direct {v0, v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginRunDelta(F)V

    .line 149
    invoke-direct {v0, v12}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndStay(F)V

    .line 150
    invoke-direct {v0, v13}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndStayRate(F)V

    .line 151
    invoke-direct {v0, v14}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndStayDelta(F)V

    .line 152
    invoke-direct {v0, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndRun(F)V

    .line 153
    invoke-direct {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndRunRate(F)V

    .line 154
    invoke-direct {v0, v15}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndRunDelta(F)V

    move/from16 v7, v25

    .line 155
    invoke-direct {v0, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailStay(F)V

    move/from16 v7, v26

    .line 156
    invoke-direct {v0, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailStayRate(F)V

    move/from16 v7, v27

    .line 157
    invoke-direct {v0, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailStayDelta(F)V

    move/from16 v7, v28

    .line 158
    invoke-direct {v0, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailRun(F)V

    move/from16 v7, v29

    .line 159
    invoke-direct {v0, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailRunRate(F)V

    move/from16 v7, v30

    .line 160
    invoke-direct {v0, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailRunDelta(F)V

    return v16
.end method

.method public inkColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkColors:Ljava/util/List;

    return-object v0
.end method

.method public inkType()Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    return-object v0
.end method

.method protected isEqualToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 3

    .line 172
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 175
    :cond_0
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 176
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkType()Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    if-ne v0, v1, :cond_1

    .line 177
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->checkEqualityOfInkColors(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->trans()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_trans:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 180
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStay()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStay:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStayRate()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginStayDelta()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayDelta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRun()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRun:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRunRate()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->beginRunDelta()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunDelta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStay()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStay:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStayRate()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endStayDelta()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayDelta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 189
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRun()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRun:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRunRate()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 191
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->endRunDelta()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunDelta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 192
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStay()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStay:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStayRate()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailStayDelta()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayDelta:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRun()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRun:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRunRate()F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->tailRunDelta()F

    move-result p1

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunDelta:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method protected penType_()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
    .locals 1

    .line 167
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0
.end method

.method public setBeginRun(F)V
    .locals 1

    .line 331
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRun:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginRun(F)V

    .line 333
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveBeginRun()V

    :cond_0
    return-void
.end method

.method public setBeginRunDelta(F)V
    .locals 1

    .line 349
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunDelta:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 350
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginRunDelta(F)V

    .line 351
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveBeginRunDelta()V

    :cond_0
    return-void
.end method

.method public setBeginRunRate(F)V
    .locals 1

    .line 340
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginRunRate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginRunRate(F)V

    .line 342
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveBeginRunRate()V

    :cond_0
    return-void
.end method

.method public setBeginStay(F)V
    .locals 1

    .line 304
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStay:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginStay(F)V

    .line 306
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveBeginStay()V

    :cond_0
    return-void
.end method

.method public setBeginStayDelta(F)V
    .locals 1

    .line 322
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayDelta:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginStayDelta(F)V

    .line 324
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveBeginStayDelta()V

    :cond_0
    return-void
.end method

.method public setBeginStayRate(F)V
    .locals 1

    .line 313
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_beginStayRate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateBeginStayRate(F)V

    .line 315
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveBeginStayRate()V

    :cond_0
    return-void
.end method

.method public setEndRun(F)V
    .locals 1

    .line 386
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRun:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndRun(F)V

    .line 388
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveEndRun()V

    :cond_0
    return-void
.end method

.method public setEndRunDelta(F)V
    .locals 1

    .line 404
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunDelta:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndRunDelta(F)V

    .line 406
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveEndRunDelta()V

    :cond_0
    return-void
.end method

.method public setEndRunRate(F)V
    .locals 1

    .line 395
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endRunRate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 396
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndRunRate(F)V

    .line 397
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveEndRunRate()V

    :cond_0
    return-void
.end method

.method public setEndStay(F)V
    .locals 1

    .line 359
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStay:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndStay(F)V

    .line 361
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveEndStay()V

    :cond_0
    return-void
.end method

.method public setEndStayDelta(F)V
    .locals 1

    .line 377
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayDelta:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndStayDelta(F)V

    .line 379
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveEndStayDelta()V

    :cond_0
    return-void
.end method

.method public setEndStayRate(F)V
    .locals 1

    .line 368
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_endStayRate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateEndStayRate(F)V

    .line 370
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveEndStayRate()V

    :cond_0
    return-void
.end method

.method public setInkColors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->checkEqualityOfInkColors(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkColors:Ljava/util/List;

    .line 286
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveInkColors()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    if-eq v0, p1, :cond_0

    .line 272
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_inkType:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    .line 273
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveInkType()V

    :cond_0
    return-void
.end method

.method public setTailRun(F)V
    .locals 1

    .line 441
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRun:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 442
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailRun(F)V

    .line 443
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveTailRun()V

    :cond_0
    return-void
.end method

.method public setTailRunDelta(F)V
    .locals 1

    .line 459
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunDelta:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailRunDelta(F)V

    .line 461
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveTailRunDelta()V

    :cond_0
    return-void
.end method

.method public setTailRunRate(F)V
    .locals 1

    .line 450
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunRate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailRunRate(F)V

    .line 452
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveTailRunRate()V

    :cond_0
    return-void
.end method

.method public setTailStay(F)V
    .locals 1

    .line 414
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStay:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailStay(F)V

    .line 416
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveTailStay()V

    :cond_0
    return-void
.end method

.method public setTailStayDelta(F)V
    .locals 1

    .line 432
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayDelta:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailStayDelta(F)V

    .line 434
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveTailStayDelta()V

    :cond_0
    return-void
.end method

.method public setTailStayRate(F)V
    .locals 1

    .line 423
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayRate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTailStayRate(F)V

    .line 425
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveTailStayRate()V

    :cond_0
    return-void
.end method

.method public setTrans(F)V
    .locals 1

    .line 294
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_trans:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->updateTrans(F)V

    .line 296
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->saveTrans()V

    :cond_0
    return-void
.end method

.method public tailRun()F
    .locals 1

    .line 438
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRun:F

    return v0
.end method

.method public tailRunDelta()F
    .locals 1

    .line 456
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunDelta:F

    return v0
.end method

.method public tailRunRate()F
    .locals 1

    .line 447
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailRunRate:F

    return v0
.end method

.method public tailStay()F
    .locals 1

    .line 411
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStay:F

    return v0
.end method

.method public tailStayDelta()F
    .locals 1

    .line 429
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayDelta:F

    return v0
.end method

.method public tailStayRate()F
    .locals 1

    .line 420
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_tailStayRate:F

    return v0
.end method

.method public trans()F
    .locals 1

    .line 291
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->m_trans:F

    return v0
.end method
