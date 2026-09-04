.class public Lcom/metamoji/mazecclient/stroke/FountainProperties;
.super Ljava/lang/Object;
.source "FountainProperties.java"

# interfaces
.implements Lcom/metamoji/mazecclient/stroke/IFountainProperties;


# instance fields
.field protected _beginRun:D

.field protected _beginRunDelta:D

.field protected _beginRunRate:D

.field protected _beginStay:D

.field protected _beginStayDelta:D

.field protected _beginStayRate:D

.field protected _endRun:D

.field protected _endRunDelta:D

.field protected _endRunRate:D

.field protected _endStay:D

.field protected _endStayDelta:D

.field protected _endStayRate:D

.field protected _tailRun:D

.field protected _tailRunDelta:D

.field protected _tailRunRate:D

.field protected _tailStay:D

.field protected _tailStayDelta:D

.field protected _tailStayRate:D

.field protected _trans:D


# direct methods
.method public constructor <init>(DDDDDDDDDDDDDDDDDDD)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_trans:D

    .line 52
    iput-wide p3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStay:D

    .line 53
    iput-wide p5, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayRate:D

    .line 54
    iput-wide p7, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayDelta:D

    .line 55
    iput-wide p9, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRun:D

    .line 56
    iput-wide p11, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunRate:D

    .line 57
    iput-wide p13, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunDelta:D

    move-wide p1, p15

    .line 58
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStay:D

    move-wide/from16 p1, p17

    .line 59
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayRate:D

    move-wide/from16 p1, p19

    .line 60
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayDelta:D

    move-wide/from16 p1, p21

    .line 61
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRun:D

    move-wide/from16 p1, p23

    .line 62
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunRate:D

    move-wide/from16 p1, p25

    .line 63
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunDelta:D

    move-wide/from16 p1, p27

    .line 64
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStay:D

    move-wide/from16 p1, p29

    .line 65
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayRate:D

    move-wide/from16 p1, p31

    .line 66
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayDelta:D

    move-wide/from16 p1, p33

    .line 67
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRun:D

    move-wide/from16 p1, p35

    .line 68
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunRate:D

    move-wide/from16 p1, p37

    .line 69
    iput-wide p1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunDelta:D

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/DataArchiver;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p0, p1}, Lcom/metamoji/mazecclient/stroke/FountainProperties;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_trans:D

    .line 74
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStay:D

    .line 75
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayRate:D

    .line 76
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayDelta:D

    .line 77
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRun:D

    .line 78
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunRate:D

    .line 79
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunDelta:D

    .line 80
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStay:D

    .line 81
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayRate:D

    .line 82
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayDelta:D

    .line 83
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRun:D

    .line 84
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunRate:D

    .line 85
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunDelta:D

    .line 86
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStay:D

    .line 87
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayRate:D

    .line 88
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayDelta:D

    .line 89
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRun:D

    .line 90
    iget v0, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunRate:D

    .line 91
    iget p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    float-to-double v0, p1

    iput-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunDelta:D

    return-void
.end method

.method private equals(Lcom/metamoji/mazecclient/stroke/FountainProperties;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 129
    :cond_1
    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_trans:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_trans:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStay:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStay:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayRate:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayDelta:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRun:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRun:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunRate:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunDelta:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStay:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStay:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayRate:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayDelta:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRun:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRun:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunRate:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunDelta:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStay:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStay:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayRate:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayDelta:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRun:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRun:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunRate:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunDelta:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 116
    instance-of v0, p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 119
    :cond_0
    check-cast p1, Lcom/metamoji/mazecclient/stroke/FountainProperties;

    invoke-direct {p0, p1}, Lcom/metamoji/mazecclient/stroke/FountainProperties;->equals(Lcom/metamoji/mazecclient/stroke/FountainProperties;)Z

    move-result p1

    return p1
.end method

.method public getBeginRun()D
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRun:D

    return-wide v0
.end method

.method public getBeginRunDelta()D
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunDelta:D

    return-wide v0
.end method

.method public getBeginRunRate()D
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunRate:D

    return-wide v0
.end method

.method public getBeginStay()D
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStay:D

    return-wide v0
.end method

.method public getBeginStayDelta()D
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayDelta:D

    return-wide v0
.end method

.method public getBeginStayRate()D
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayRate:D

    return-wide v0
.end method

.method public getEndRun()D
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRun:D

    return-wide v0
.end method

.method public getEndRunDelta()D
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunDelta:D

    return-wide v0
.end method

.method public getEndRunRate()D
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunRate:D

    return-wide v0
.end method

.method public getEndStay()D
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStay:D

    return-wide v0
.end method

.method public getEndStayDelta()D
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayDelta:D

    return-wide v0
.end method

.method public getEndStayRate()D
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayRate:D

    return-wide v0
.end method

.method public getTailRun()D
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRun:D

    return-wide v0
.end method

.method public getTailRunDelta()D
    .locals 2

    .line 112
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunDelta:D

    return-wide v0
.end method

.method public getTailRunRate()D
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunRate:D

    return-wide v0
.end method

.method public getTailStay()D
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStay:D

    return-wide v0
.end method

.method public getTailStayDelta()D
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayDelta:D

    return-wide v0
.end method

.method public getTailStayRate()D
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayRate:D

    return-wide v0
.end method

.method public getTrans()D
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_trans:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 152
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_trans:D

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x100

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStay:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayDelta:D

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRun:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunDelta:D

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStay:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayDelta:D

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRun:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunDelta:D

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStay:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayDelta:D

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRun:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v1, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunDelta:D

    double-to-int v1, v1

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 4

    .line 175
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_trans:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 5

    .line 190
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 194
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_trans:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 195
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStay:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 196
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayRate:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 197
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayDelta:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 198
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRun:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 199
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunRate:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 200
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunDelta:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 201
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStay:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 202
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayRate:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 203
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayDelta:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 204
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRun:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 205
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunRate:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 206
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunDelta:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 207
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStay:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 208
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayRate:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 209
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayDelta:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 210
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRun:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 211
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunRate:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 212
    iget-wide v0, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunDelta:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 214
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-short v2, v1

    .line 217
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v2

    add-int/2addr v1, v2

    .line 219
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v1

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v2

    .line 229
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_trans:D

    .line 230
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStay:D

    .line 231
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayRate:D

    .line 232
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginStayDelta:D

    .line 233
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRun:D

    .line 234
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunRate:D

    .line 235
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_beginRunDelta:D

    .line 236
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStay:D

    .line 237
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayRate:D

    .line 238
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endStayDelta:D

    .line 239
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRun:D

    .line 240
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunRate:D

    .line 241
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_endRunDelta:D

    .line 242
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStay:D

    .line 243
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayRate:D

    .line 244
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailStayDelta:D

    .line 245
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRun:D

    .line 246
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunRate:D

    .line 247
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    float-to-double v3, v3

    iput-wide v3, p0, Lcom/metamoji/mazecclient/stroke/FountainProperties;->_tailRunDelta:D

    add-int/2addr v2, v0

    .line 249
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    return v1
.end method
