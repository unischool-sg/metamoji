.class public Lcom/metamoji/mazec/stroke/StrokeFountainProperties;
.super Ljava/lang/Object;
.source "StrokeFountainProperties.java"


# instance fields
.field private mBeginRun:D

.field private mBeginRunDelta:D

.field private mBeginRunRate:D

.field private mBeginStay:D

.field private mBeginStayDelta:D

.field private mBeginStayRate:D

.field private mEndRun:D

.field private mEndRunDelta:D

.field private mEndRunRate:D

.field private mEndStay:D

.field private mEndStayDelta:D

.field private mEndStayRate:D

.field private mTailRun:D

.field private mTailRunDelta:D

.field private mTailRunRate:D

.field private mTailStay:D

.field private mTailStayDelta:D

.field private mTailStayRate:D

.field private mTrans:D


# direct methods
.method constructor <init>(DDDDDDDDDDDDDDDDDDD)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTrans:D

    .line 47
    iput-wide p3, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStay:D

    .line 48
    iput-wide p5, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayRate:D

    .line 49
    iput-wide p7, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayDelta:D

    .line 50
    iput-wide p9, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRun:D

    .line 51
    iput-wide p11, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunRate:D

    .line 52
    iput-wide p13, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunDelta:D

    move-wide p1, p15

    .line 53
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStay:D

    move-wide/from16 p1, p17

    .line 54
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayRate:D

    move-wide/from16 p1, p19

    .line 55
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayDelta:D

    move-wide/from16 p1, p21

    .line 56
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRun:D

    move-wide/from16 p1, p23

    .line 57
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunRate:D

    move-wide/from16 p1, p25

    .line 58
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunDelta:D

    move-wide/from16 p1, p27

    .line 59
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStay:D

    move-wide/from16 p1, p29

    .line 60
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayRate:D

    move-wide/from16 p1, p31

    .line 61
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayDelta:D

    move-wide/from16 p1, p33

    .line 62
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRun:D

    move-wide/from16 p1, p35

    .line 63
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunRate:D

    move-wide/from16 p1, p37

    .line 64
    iput-wide p1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunDelta:D

    return-void
.end method

.method private equals(Lcom/metamoji/mazec/stroke/StrokeFountainProperties;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 127
    :cond_1
    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTrans:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTrans:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStay:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStay:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayRate:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayDelta:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRun:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRun:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunRate:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunDelta:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStay:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStay:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayRate:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayDelta:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRun:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRun:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunRate:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunDelta:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStay:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStay:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayRate:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayDelta:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRun:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRun:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunRate:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunRate:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunDelta:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunDelta:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static fountainPropertiesFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeFountainProperties;
    .locals 43

    move-object/from16 v0, p0

    .line 92
    new-instance v1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    float-to-double v2, v2

    iget v4, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    float-to-double v4, v4

    iget v6, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    float-to-double v6, v6

    iget v8, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    float-to-double v8, v8

    iget v10, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    float-to-double v10, v10

    iget v12, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    float-to-double v12, v12

    iget v14, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    float-to-double v14, v14

    move-object/from16 v16, v1

    iget v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    move-wide/from16 v17, v2

    float-to-double v1, v1

    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    move-wide/from16 v19, v1

    float-to-double v1, v3

    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    move-wide/from16 v21, v1

    float-to-double v1, v3

    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    move-wide/from16 v23, v1

    float-to-double v1, v3

    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    move-wide/from16 v25, v1

    float-to-double v1, v3

    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    move-wide/from16 v27, v1

    float-to-double v1, v3

    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    move-wide/from16 v29, v1

    float-to-double v1, v3

    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    move-wide/from16 v31, v1

    float-to-double v1, v3

    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    move-wide/from16 v33, v1

    float-to-double v1, v3

    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    move-wide/from16 v35, v1

    float-to-double v1, v3

    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    move-wide/from16 v37, v1

    float-to-double v1, v3

    iget v0, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    move-wide/from16 v39, v1

    float-to-double v0, v0

    move-wide/from16 v41, v37

    move-wide/from16 v37, v0

    move-wide/from16 v1, v17

    move-wide/from16 v17, v21

    move-wide/from16 v21, v25

    move-wide/from16 v25, v29

    move-wide/from16 v29, v33

    move-wide/from16 v33, v41

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-wide v13, v14

    move-object/from16 v0, v16

    move-wide/from16 v15, v19

    move-wide/from16 v19, v23

    move-wide/from16 v23, v27

    move-wide/from16 v27, v31

    move-wide/from16 v31, v35

    move-wide/from16 v35, v39

    invoke-direct/range {v0 .. v38}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;-><init>(DDDDDDDDDDDDDDDDDDD)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/metamoji/mazec/stroke/StrokeFountainProperties;
    .locals 43

    move-object/from16 v0, p0

    .line 170
    new-instance v1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    iget-wide v2, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTrans:D

    iget-wide v4, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStay:D

    iget-wide v6, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayRate:D

    iget-wide v8, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayDelta:D

    iget-wide v10, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRun:D

    iget-wide v12, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunRate:D

    iget-wide v14, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunDelta:D

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStay:D

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayRate:D

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayDelta:D

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRun:D

    move-wide/from16 v25, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunRate:D

    move-wide/from16 v27, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunDelta:D

    move-wide/from16 v29, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStay:D

    move-wide/from16 v31, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayRate:D

    move-wide/from16 v33, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayDelta:D

    move-wide/from16 v35, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRun:D

    move-wide/from16 v37, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunRate:D

    move-wide/from16 v39, v1

    iget-wide v1, v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunDelta:D

    move-wide/from16 v41, v1

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v16, v19

    move-wide/from16 v18, v21

    move-wide/from16 v20, v23

    move-wide/from16 v22, v25

    move-wide/from16 v24, v27

    move-wide/from16 v26, v29

    move-wide/from16 v28, v31

    move-wide/from16 v30, v33

    move-wide/from16 v32, v35

    move-wide/from16 v34, v37

    move-wide/from16 v36, v39

    move-wide/from16 v38, v41

    invoke-direct/range {v1 .. v39}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;-><init>(DDDDDDDDDDDDDDDDDDD)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->clone()Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 115
    instance-of v0, p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 118
    :cond_0
    check-cast p1, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->equals(Lcom/metamoji/mazec/stroke/StrokeFountainProperties;)Z

    move-result p1

    return p1
.end method

.method public getBeginRun()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRun:D

    return-wide v0
.end method

.method public getBeginRunDelta()D
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunDelta:D

    return-wide v0
.end method

.method public getBeginRunRate()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunRate:D

    return-wide v0
.end method

.method public getBeginStay()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStay:D

    return-wide v0
.end method

.method public getBeginStayDelta()D
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayDelta:D

    return-wide v0
.end method

.method public getBeginStayRate()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayRate:D

    return-wide v0
.end method

.method public getEndRun()D
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRun:D

    return-wide v0
.end method

.method public getEndRunDelta()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunDelta:D

    return-wide v0
.end method

.method public getEndRunRate()D
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunRate:D

    return-wide v0
.end method

.method public getEndStay()D
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStay:D

    return-wide v0
.end method

.method public getEndStayDelta()D
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayDelta:D

    return-wide v0
.end method

.method public getEndStayRate()D
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayRate:D

    return-wide v0
.end method

.method public getTailRun()D
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRun:D

    return-wide v0
.end method

.method public getTailRunDelta()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunDelta:D

    return-wide v0
.end method

.method public getTailRunRate()D
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunRate:D

    return-wide v0
.end method

.method public getTailStay()D
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStay:D

    return-wide v0
.end method

.method public getTailStayDelta()D
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayDelta:D

    return-wide v0
.end method

.method public getTailStayRate()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayRate:D

    return-wide v0
.end method

.method public getTrans()D
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTrans:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 149
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTrans:D

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x100

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStay:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayDelta:D

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRun:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunDelta:D

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStay:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayDelta:D

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRun:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunDelta:D

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStay:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayDelta:D

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRun:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v4, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunRate:D

    mul-double/2addr v4, v2

    double-to-int v1, v4

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunDelta:D

    double-to-int v1, v1

    rem-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 4

    .line 193
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTrans:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "[%s] "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTrans:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "trans:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStay:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "beginStay:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayRate:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "beginStayRate:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginStayDelta:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "beginStayDelta:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRun:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "beginRun:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunRate:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "beginRunRate:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mBeginRunDelta:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "beginRunDelta:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStay:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "endStay:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayRate:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "endStayRate:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndStayDelta:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "endStayDelta:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRun:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "endRun:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunRate:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "endRunRate:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mEndRunDelta:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "endRunDelta:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStay:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tailStay:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayRate:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tailStayRate:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailStayDelta:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tailStayDelta:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRun:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tailRun:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunRate:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tailRunRate:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->mTailRunDelta:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tailRunDelta:%.03f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
