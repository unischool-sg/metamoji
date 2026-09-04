.class public Lcom/metamoji/un/text/UnTextUnitTapObserver;
.super Ljava/lang/Object;
.source "UnTextUnitTapObserver.java"


# static fields
.field public static UNTEXTUNIT_TAPOBSERVER_CONTINUOUS_TAP_INTERVAL:I = 0x12c

.field public static UNTEXTUNIT_TAPOBSERVER_SAMEPOINT_RANGE_WIDTH:I = 0xa

.field public static UNTTEXTUNIT_TAPOBSERVER_SAMEPOINT_RANGE_HEIGHT:I = 0xa


# instance fields
.field private _continuousTapCount:S

.field private _tapDate:Ljava/util/Calendar;

.field private _tapPoint:Landroid/graphics/PointF;

.field private _tapTextRange:Lcom/metamoji/un/text/model/TextRange;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextUnitTapObserver;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapDate:Ljava/util/Calendar;

    .line 48
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    .line 49
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 50
    iput-short v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_continuousTapCount:S

    return-void
.end method

.method public getContinuousTapCount()S
    .locals 1

    .line 40
    iget-short v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_continuousTapCount:S

    return v0
.end method

.method public incrementTap()V
    .locals 5

    .line 57
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 59
    iget-short v1, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_continuousTapCount:S

    .line 60
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapDate:Ljava/util/Calendar;

    if-eqz v2, :cond_0

    .line 63
    :try_start_0
    sget v3, Lcom/metamoji/un/text/UnTextUnitTapObserver;->UNTEXTUNIT_TAPOBSERVER_CONTINUOUS_TAP_INTERVAL:I

    const/16 v4, 0xe

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 65
    iget-object v2, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gez v2, :cond_0

    .line 66
    iget-short v2, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_continuousTapCount:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_continuousTapCount:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    iput-short v1, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_continuousTapCount:S

    .line 73
    :cond_0
    :goto_0
    iget-short v2, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_continuousTapCount:S

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 74
    iput-short v1, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_continuousTapCount:S

    .line 77
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapDate:Ljava/util/Calendar;

    return-void
.end method

.method public isEqualToSavePointRange(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextRange;Lcom/metamoji/un/text/model/ITextInput;)Z
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    .line 104
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    .line 105
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    .line 106
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isSelectedAll()Z

    move-result v0

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->isSelectedAll()Z

    move-result v3

    if-ne v0, v3, :cond_1

    return v2

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v3, Lcom/metamoji/un/text/UnTextUnitTapObserver;->UNTEXTUNIT_TAPOBSERVER_SAMEPOINT_RANGE_WIDTH:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    .line 112
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->UNTTEXTUNIT_TAPOBSERVER_SAMEPOINT_RANGE_HEIGHT:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_6

    .line 114
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 116
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-interface {p3, v0, v2}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    const/4 v0, -0x1

    invoke-interface {p3, p2, v0}, Lcom/metamoji/un/text/model/ITextInput;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    if-nez p1, :cond_6

    :cond_2
    return v2

    .line 122
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    .line 127
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    .line 128
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p3

    .line 129
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p3

    goto :goto_0

    :cond_5
    move-object p2, p1

    .line 135
    :goto_0
    invoke-virtual {p2, p3}, Lcom/metamoji/un/text/model/TextRange;->contains(Lcom/metamoji/un/text/model/TextPosition;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public isWaitStateNextTap()Z
    .locals 4

    .line 149
    iget-short v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_continuousTapCount:S

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapDate:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 154
    sget v2, Lcom/metamoji/un/text/UnTextUnitTapObserver;->UNTEXTUNIT_TAPOBSERVER_CONTINUOUS_TAP_INTERVAL:I

    const/16 v3, 0xe

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_0
    return v1
.end method

.method public setPointRange(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextRange;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapPoint:Landroid/graphics/PointF;

    .line 87
    iput-object p2, p0, Lcom/metamoji/un/text/UnTextUnitTapObserver;->_tapTextRange:Lcom/metamoji/un/text/model/TextRange;

    return-void
.end method
