.class public Lcom/metamoji/un/draw2/module/element/DrEraseContext;
.super Ljava/lang/Object;
.source "DrEraseContext.java"


# instance fields
.field private m_intervalsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->m_intervalsMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    const-wide/16 v2, 0x0

    cmpg-double v4, p1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ltz v4, :cond_14

    cmpg-double v2, p3, v2

    if-ltz v2, :cond_14

    cmpg-double v2, p3, p1

    if-gez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 49
    invoke-static {v2, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 54
    :cond_1
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->m_intervalsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->m_intervalsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 63
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    add-int/lit8 v7, v4, -0x1

    .line 69
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    cmpl-double v8, p1, v8

    if-ltz v8, :cond_5

    if-nez v8, :cond_4

    .line 72
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 74
    :cond_4
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 81
    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v6

    :cond_6
    :goto_0
    const/4 v9, 0x2

    if-ge v6, v4, :cond_11

    add-int/lit8 v10, v6, 0x1

    .line 86
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    add-int/lit8 v6, v6, 0x2

    .line 87
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    if-eqz v8, :cond_b

    if-eq v8, v2, :cond_8

    if-eq v8, v9, :cond_7

    goto :goto_0

    .line 152
    :cond_7
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_8
    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    .line 134
    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    cmpg-double v16, p3, v12

    if-gtz v16, :cond_a

    cmpl-double v8, p3, v12

    if-nez v8, :cond_9

    .line 137
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    :cond_9
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    cmpg-double v11, p3, v14

    if-gtz v11, :cond_6

    .line 145
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v8, v9

    goto :goto_0

    .line 92
    :cond_b
    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    .line 93
    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    cmpg-double v16, p1, v12

    if-gtz v16, :cond_e

    cmpl-double v8, p1, v12

    if-nez v8, :cond_c

    .line 96
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpg-double v8, p3, v14

    if-gtz v8, :cond_f

    .line 98
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :cond_c
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpg-double v8, p3, v12

    if-gez v8, :cond_d

    .line 106
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    cmpg-double v8, p3, v14

    if-gtz v8, :cond_f

    .line 111
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    cmpg-double v12, p1, v14

    if-gtz v12, :cond_10

    .line 118
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpg-double v8, p3, v14

    if-gtz v8, :cond_f

    .line 120
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_f
    move v8, v2

    goto/16 :goto_0

    .line 126
    :cond_10
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    if-eqz v8, :cond_13

    if-eq v8, v2, :cond_12

    goto :goto_2

    .line 169
    :cond_12
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 166
    :cond_13
    invoke-static {v9, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 176
    :goto_2
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->m_intervalsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 45
    :cond_14
    :goto_3
    invoke-static {v6, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->m_intervalsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public containsInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ltz v2, :cond_6

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_6

    cmpg-double v0, p3, p1

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-nez p5, :cond_1

    .line 213
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->m_intervalsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/ArrayList;

    if-eqz p5, :cond_5

    .line 217
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    .line 220
    :cond_3
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    .line 221
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    add-int/lit8 v1, v1, 0x2

    .line 222
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v5, p1, v5

    if-gez v5, :cond_4

    return v4

    :cond_4
    cmpg-double v5, p1, v2

    if-gtz v5, :cond_3

    cmpg-double p1, p3, v2

    if-gtz p1, :cond_5

    return v0

    :cond_5
    :goto_0
    return v4

    .line 209
    :cond_6
    :goto_1
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4
.end method

.method public getComplementsOfStroke(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "DD)",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    cmpg-double v3, p2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ltz v3, :cond_15

    cmpg-double v1, p4, v1

    if-ltz v1, :cond_15

    cmpg-double v1, p4, p2

    if-gez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 246
    invoke-static {v1, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1
    cmpl-double v2, p2, p4

    if-nez v2, :cond_2

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_2
    move-object/from16 v2, p0

    .line 254
    iget-object v3, v2, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->m_intervalsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    if-eqz v0, :cond_14

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_4

    .line 262
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 263
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    add-int/lit8 v9, v6, -0x1

    .line 264
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    cmpl-double v9, p2, v9

    if-gez v9, :cond_13

    cmpg-double v7, p4, v7

    if-gtz v7, :cond_4

    goto/16 :goto_3

    .line 270
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    :cond_5
    :goto_0
    if-ge v5, v6, :cond_10

    add-int/lit8 v9, v5, 0x1

    .line 273
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    add-int/lit8 v5, v5, 0x2

    .line 274
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    .line 275
    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    .line 276
    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    if-eqz v8, :cond_9

    if-eq v8, v1, :cond_6

    goto :goto_0

    :cond_6
    cmpg-double v11, p4, v11

    if-gtz v11, :cond_7

    .line 315
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7

    :cond_7
    cmpg-double v11, p4, v13

    if-gtz v11, :cond_8

    .line 318
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7

    .line 321
    :cond_8
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    cmpg-double v15, p2, v11

    if-gtz v15, :cond_e

    cmpl-double v8, p2, v11

    if-nez v8, :cond_b

    cmpg-double v8, p4, v13

    if-gtz v8, :cond_a

    goto :goto_2

    .line 286
    :cond_a
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 290
    :cond_b
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpg-double v8, p4, v11

    if-gtz v8, :cond_c

    .line 292
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7

    :cond_c
    cmpg-double v8, p4, v13

    if-gtz v8, :cond_d

    .line 295
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7

    .line 298
    :cond_d
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    cmpg-double v10, p2, v13

    if-gtz v10, :cond_5

    cmpg-double v8, p4, v13

    if-gtz v8, :cond_f

    goto :goto_2

    .line 307
    :cond_f
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v8, v1

    goto :goto_0

    :cond_10
    if-eqz v8, :cond_12

    if-eq v8, v1, :cond_11

    :goto_2
    return-object v7

    .line 339
    :cond_11
    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7

    .line 336
    :cond_12
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v7

    .line 266
    :cond_13
    :goto_3
    new-array v0, v3, [Ljava/lang/Number;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 258
    :cond_14
    :goto_4
    new-array v0, v3, [Ljava/lang/Number;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_15
    :goto_5
    move-object/from16 v2, p0

    .line 242
    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEraseIntervalsOfStroke(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 197
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 198
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->m_intervalsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    return-object p1

    .line 201
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getStrokes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->m_intervalsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasEraseIntervals()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->m_intervalsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
