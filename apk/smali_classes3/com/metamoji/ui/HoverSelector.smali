.class public Lcom/metamoji/ui/HoverSelector;
.super Ljava/lang/Object;
.source "HoverSelector.java"


# static fields
.field static _sample:[F

.field static _samplePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/metamoji/ui/HoverSelector;->_samplePoints:Ljava/util/List;

    const/16 v0, 0x142

    .line 70
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/metamoji/ui/HoverSelector;->_sample:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f5b1290
        0x3dadb9fd
        0x3f5a554c
        0x3e0bae1f
        0x3f5833c6    # 0.84454f
        0x3e3fe360
        0x3f56f3d4
        0x3e5e811d
        0x3f54e747
        0x3e7c5b73
        0x3f5081e4
        0x3e9e3554    # 0.3090006f
        0x3f4900c5
        0x3ec5c415
        0x3f3a9d84
        0x3f08cd96
        0x3f224573
        0x3f3d67cb
        0x3f14e542
        0x3f5a4ecf
        0x3f0a50da
        0x3f6d719f
        0x3eff57fe
        0x3f805919
        0x3ecbc679
        0x3f9498ee
        0x3eb6e4e2
        0x3f9ccbfb
        0x3ea590e9
        0x3fa2f9d3
        0x3e931a2a
        0x3fa98f58
        0x3e883156
        0x3face936
        0x3e765669
        0x3fb0e968
        0x3e625ae1
        0x3fb357de
        0x3e394f85
        0x3fb8568a
        0x3e128daf
        0x3fbbcbbc
        0x3e012ee2
        0x3fbd586d
        0x3de214e3
        0x3fbe49dc
        0x3dbc72ad
        0x3fbf6356
        0x3da80d30
        0x3fbf8fe7
        0x3d89cbc6
        0x3fbfd207
        0x3d66124e
        0x3fbf57ac
        0x3d31b25f
        0x3fbecae6
        0x3d07fb41
        0x3fbd685a
        0x3cbe2138
        0x3fbc0c8d
        0x3c7ecf7e
        0x3fb979d9
        0x3c13433e
        0x3fb74520
        0x3b89b5f7
        0x3fb2898f
        0x3962b3bf    # 2.162E-4f
        0x3fae983d
        0x38d5e8d5    # 1.02E-4f
        0x3fa842d0
        0x0
        0x3fa29939
        0x3b89b5f7
        0x3f9cf640
        0x3c0cbb65
        0x3f9713f9
        0x3c7afd62
        0x3f9323f6
        0x3ced0d4a    # 0.028937f
        0x3f8b2c06
        0x3d5663f0
        0x3f831330
        0x3d902bc7
        0x3f79a87a
        0x3dcc63d6
        0x3f6b151e
        0x3de5341c
        0x3f6513a5
        0x3e00903b
        0x3f5fdf09
        0x3e106c87
        0x3f59f527
        0x3e1bab07
        0x3f56f449
        0x3e2b1f91
        0x3f52d331
        0x3e384902
        0x3f50ba73
        0x3e491629
        0x3f4e0d35
        0x3e566f50
        0x3f4d600f
        0x3e678cf2
        0x3f4c8206    # 0.798859f
        0x3e7255d8
        0x3f4d8117
        0x3e7d4421
        0x3f4e83b2
        0x3e851bae
        0x3f526d9c
        0x3e9186b3
        0x3f5dc369
        0x3eb6dfe7
        0x3f84c754
        0x3edc3922
        0x3f9aad04
        0x3f00b42c
        0x3fac12f9    # 1.344329f
        0x3f0a904a
        0x3fb3d851
        0x3f14a77c
        0x3fb97931
        0x3f1e223b
        0x3fbec2c6
        0x3f27c8a3
        0x3fc25e1c
        0x3f304506
        0x3fc58a09
        0x3f380d80
        0x3fc72f6f
        0x3f3e8816
        0x3fc88e3f
        0x3f46a78b
        0x3fc92bfe
        0x3f4d7cf6
        0x3fc9b0b4
        0x3f5662dc
        0x3fc9736d
        0x3f5ef417
        0x3fc93871
        0x3f680c52
        0x3fc82e0a    # 1.563905f
        0x3f70ed81
        0x3fc729ed
        0x3f79a672
        0x3fc563d4
        0x3f80b791
        0x3fc3ce8e
        0x3f848a9c
        0x3fc18338
        0x3f87e88a
        0x3fbf7e24
        0x3f8b2420
        0x3fbcd98c
        0x3f8e2175
        0x3fba67e0
        0x3f90f5a1    # 1.132496f
        0x3fb75e39
        0x3f937825
        0x3fb4ac54
        0x3f961dc9
        0x3fb10caa
        0x3f986db5
        0x3fade250
        0x3f9ac4a4
        0x3fa9e814
        0x3f9d286b
        0x3fa5d827
        0x3f9f0bf2
        0x3fa1cf92
        0x3fa1361e
        0x3f9d3040
        0x3fa2c54c
        0x3f98bf01
        0x3fa49720
        0x3f938fc5
        0x3fa59fb2
        0x3f8f0481
        0x3fa79d5e
        0x3f8643f6
        0x3fa8f51b
        0x3f754163
        0x3fa98d58
        0x3f6af1dc
        0x3fa9b2d5
        0x3f5f6028
        0x3fa9dc0e
        0x3f52a833
        0x3fa97c1c    # 1.3241f
        0x3f463593
        0x3fa9069a
        0x3f36fab5
        0x3fa7ffef
        0x3f29938f
        0x3fa6c040
        0x3f194482
        0x3fa51d36
        0x3f0d2fb8
        0x3fa359ef
        0x3f002cfc
        0x3fa0b4c0
        0x3ee6ad3b
        0x3f9e43cc
        0x3ecefb3f
        0x3f9aa800
        0x3eb4f986
        0x3f96c27a
        0x3e98e4a4
        0x3f930dd8
        0x3e84809f
        0x3f8e3bbc
        0x3e53f375
        0x3f89f3b6
        0x3e32002d
        0x3f84a266
        0x3e07d53f
        0x3f7db339
        0x3dd1f992
        0x3f70cc36
        0x3d8d2ca4
        0x3f62949a
        0x3d3dbaab
        0x3f533919    # 0.82509f
        0x3cb35e67
        0x3f43be88
        0x3c339acd
        0x3f343958    # 0.704f
        0x0
        0x3f240d6c
        0x3b0330a2
        0x3f15772e
        0x3b798237
        0x3f06f8fa
        0x3c8f5ead
        0x3ef43124
        0x3cf309e3
        0x3eded494
        0x3d4c9bf0
        0x3eca4584
        0x3d8e49bf
        0x3ebbe27f
        0x3dbf208c
        0x3ead867a
        0x3defdfa7
        0x3ea2038f    # 0.3164334f
        0x3e197311
        0x3e96fef8
        0x3e398677
        0x3e8f3ccf
        0x3e6290e1
        0x3e8744d4
        0x3e865bf7
        0x3e85cdf7
        0x3e967614
        0x3e843b5d
        0x3ea7c137
        0x3e87d312
        0x3eb48528
        0x3e8afc12
        0x3ebfbfb2
        0x3e9487f6
        0x3eccd56d    # 0.4000658f
        0x3e9c1023
        0x3ed72841
        0x3eac4ae2
        0x3ee4e634
        0x3ebafaaf
        0x3ef155c2
        0x3ecf3cf7    # 0.404762f
        0x3efd8094
        0x3ee2d993
        0x3f04a3ef
        0x3ef861f7
        0x3f092811
        0x3f04d4c8
        0x3f0cc7d5
        0x3f113f0b
        0x3f1046a6
        0x3f194340
        0x3f128870
        0x3f26fa4d
        0x3f15331d
        0x3f33b279
        0x3f17ac3f
        0x3f3f049b
        0x3f191c59
        0x3f4cb5bb
        0x3f1ad98f
        0x3f5b6d01
        0x3f1bb6f1
        0x3f6b0a70
        0x3f1ca1d9
        0x3f7cd1c8
        0x3f1c9529
        0x3f88aab9
        0x3f1c8685
        0x3f9029e1
        0x3f1b7623
        0x3f993d43
        0x3f1a2c67
        0x3fa2392e
        0x3f1777c4
        0x3faa9574
        0x3f14f334
        0x3fb52dcb    # 1.41546f
        0x3f103973
        0x3fbf8412
        0x3f0b9d1f
        0x3fc7ba88
        0x3f06bfbd
        0x3fd08a16
        0x3f0187b5
        0x3fd7d2c8
        0x3ef7bf33
        0x3fdee382
        0x3eecc5f5
        0x3fe5d55e
        0x3edf0fab
        0x3ff6a800
        0x3ebdd866
        0x4003588e
        0x3e96e533
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Compress(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 495
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static CreatePalletButton(IFF)Landroid/graphics/Bitmap;
    .locals 7

    float-to-int p1, p1

    .line 473
    :try_start_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 474
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 475
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 477
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->hoverselector_pen_preview_frame:I

    invoke-static {v2}, Lcom/metamoji/ui/HoverSelector;->Compress(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 478
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 479
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 480
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 483
    invoke-static {p0}, Lcom/metamoji/ui/HoverSelector;->Compress(I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 484
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p1, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 485
    invoke-virtual {v0, p0, p1, p1, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 489
    const-string p1, "HoverCreatePalletButton"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static CreatePenButton(IFF)Landroid/graphics/Bitmap;
    .locals 9

    .line 440
    :try_start_0
    invoke-static {}, Lcom/metamoji/nt/NtShapePenSettings;->getMasterPenSettings()Lcom/metamoji/nt/NtPenSettings;

    move-result-object v0

    .line 446
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p0

    float-to-int v0, p1

    .line 448
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 449
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 450
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 451
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v4

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/nt/NtInkManager;->penPreviewBackgroundId(ILjava/util/List;)I

    move-result v4

    invoke-static {v4}, Lcom/metamoji/ui/HoverSelector;->Compress(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 452
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 453
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 454
    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 456
    invoke-static {p0}, Lcom/metamoji/ui/HoverSelector;->getPenPreviewWeight(Lcom/metamoji/nt/share/NtPenStyle;)F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p1, v4

    mul-float/2addr p2, v4

    invoke-static {p0, v0, p1, p2, v8}, Lcom/metamoji/ui/HoverSelector;->CreatePenPreview(Lcom/metamoji/nt/share/NtPenStyle;FFFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 457
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p1, v8, v8, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 458
    invoke-virtual {v2, p0, p1, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 462
    const-string p1, "Hover@CreatePenButton"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static CreatePenPreview(Lcom/metamoji/nt/share/NtPenStyle;FFFZ)Landroid/graphics/Bitmap;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    mul-float v2, p1, p3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    move v2, v3

    :cond_0
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v1, v4

    float-to-int v6, v5

    .line 254
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 255
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const/4 v10, 0x1

    .line 258
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 259
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "fountainpen"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/16 v13, 0xff

    const/high16 v14, 0x437f0000    # 255.0f

    if-eqz v11, :cond_1

    move v11, v13

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v11

    mul-float/2addr v11, v14

    float-to-int v11, v11

    .line 260
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v15

    move/from16 p1, v3

    .line 262
    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v3

    move/from16 p3, v4

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    invoke-static {v11, v3, v4, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 267
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "shapepen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v16, 0x3f666666    # 0.9f

    const/4 v4, 0x0

    if-nez v3, :cond_b

    .line 268
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v3

    const v17, 0x3dcccccd    # 0.1f

    const-string/jumbo v14, "shapemarkerpen"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_5

    .line 274
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "standard"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 275
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v11, "markerpen"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    .line 293
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v11, "calligraphy"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 295
    invoke-virtual {v8}, Landroid/graphics/Canvas;->save()I

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v3, v1

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v6

    .line 299
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 301
    iget v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    const v11, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v11

    const/high16 v11, 0x43340000    # 180.0f

    div-float/2addr v1, v11

    neg-float v11, v2

    float-to-double v14, v1

    move v12, v6

    move-object/from16 v18, v7

    .line 302
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v11, v1

    div-float v11, v11, p3

    .line 303
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v2

    div-float v1, v1, p3

    .line 312
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_5

    .line 315
    sget-object v6, Lcom/metamoji/ui/HoverSelector;->_samplePoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    float-to-double v6, v1

    float-to-double v14, v3

    const-wide v19, 0x3fd3333333333333L    # 0.3

    mul-double v19, v19, v14

    add-double v6, v6, v19

    double-to-float v1, v6

    float-to-double v6, v11

    const-wide v11, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v14, v11

    sub-double/2addr v6, v14

    double-to-float v6, v6

    move v7, v4

    .line 319
    :goto_1
    sget-object v11, Lcom/metamoji/ui/HoverSelector;->_sample:[F

    array-length v11, v11

    if-ge v7, v11, :cond_4

    .line 320
    sget-object v11, Lcom/metamoji/ui/HoverSelector;->_samplePoints:Ljava/util/List;

    new-instance v12, Landroid/graphics/PointF;

    sget-object v14, Lcom/metamoji/ui/HoverSelector;->_sample:[F

    aget v15, v14, v7

    mul-float/2addr v15, v3

    add-float/2addr v15, v6

    add-int/lit8 v19, v7, 0x1

    aget v14, v14, v19

    mul-float/2addr v14, v3

    add-float/2addr v14, v1

    invoke-direct {v12, v15, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 323
    :cond_4
    sget-object v6, Lcom/metamoji/ui/HoverSelector;->_samplePoints:Ljava/util/List;

    goto :goto_2

    .line 325
    :cond_5
    new-instance v7, Landroid/graphics/PointF;

    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v14, v3

    add-float/2addr v14, v11

    mul-float v15, v3, v16

    add-float/2addr v15, v1

    invoke-direct {v7, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v7, Landroid/graphics/PointF;

    const v14, 0x3f19999a    # 0.6f

    mul-float/2addr v14, v3

    add-float/2addr v14, v11

    const v15, 0x3fd9999a    # 1.7f

    mul-float/2addr v15, v3

    add-float/2addr v15, v1

    invoke-direct {v7, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v7, Landroid/graphics/PointF;

    mul-float v14, v3, p1

    add-float v15, v14, v11

    add-float/2addr v14, v1

    invoke-direct {v7, v15, v14}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v7, Landroid/graphics/PointF;

    const v14, 0x3fb33333    # 1.4f

    mul-float/2addr v14, v3

    add-float/2addr v14, v11

    mul-float/2addr v12, v3

    add-float/2addr v12, v1

    invoke-direct {v7, v14, v12}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v7, Landroid/graphics/PointF;

    const v12, 0x3fe66666    # 1.8f

    mul-float/2addr v12, v3

    add-float/2addr v12, v11

    const v11, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v11

    add-float/2addr v3, v1

    invoke-direct {v7, v12, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    :goto_2
    new-instance v1, Lcom/metamoji/ci/CalligraphyFactory;

    invoke-direct {v1}, Lcom/metamoji/ci/CalligraphyFactory;-><init>()V

    .line 334
    invoke-virtual {v1, v6}, Lcom/metamoji/ci/CalligraphyFactory;->init(Ljava/util/List;)V

    float-to-double v2, v2

    .line 335
    iput-wide v2, v1, Lcom/metamoji/ci/CalligraphyFactory;->penWidth:D

    .line 336
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/metamoji/ci/CalligraphyFactory;->penAngle:D

    .line 337
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/metamoji/ci/CalligraphyFactory;->penRate:D

    .line 338
    iput v10, v1, Lcom/metamoji/ci/CalligraphyFactory;->type:I

    .line 340
    invoke-virtual {v1}, Lcom/metamoji/ci/CalligraphyFactory;->roiReset()V

    .line 341
    invoke-virtual {v1}, Lcom/metamoji/ci/CalligraphyFactory;->solve()V

    .line 342
    iget-object v1, v1, Lcom/metamoji/ci/CalligraphyFactory;->shapes:Ljava/util/List;

    .line 343
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    .line 344
    invoke-virtual {v8, v2, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 346
    :cond_6
    invoke-virtual {v8}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    :cond_7
    move-object/from16 v18, v7

    .line 368
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 369
    invoke-static {v4}, Lcom/metamoji/nt/share/NtPenPreview;->getInstance(Z)Lcom/metamoji/nt/share/NtPenPreview;

    move-result-object v3

    .line 370
    invoke-virtual {v3, v0, v2, v1}, Lcom/metamoji/nt/share/NtPenPreview;->createPenPreview(Lcom/metamoji/nt/share/NtPenStyle;FF)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 371
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 373
    iget v6, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    cmpl-float v6, v6, p1

    if-lez v6, :cond_8

    .line 374
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineWidth()F

    move-result v6

    .line 375
    iget v7, v2, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float v7, v7, v17

    mul-float/2addr v7, v6

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v7, v6

    float-to-int v6, v7

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 377
    :cond_8
    invoke-virtual {v8, v1, v2, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_9
    :goto_4
    move-object/from16 v18, v7

    .line 277
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->isPenId()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.metamoji.pen.builtin.standard2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    add-float v1, v2, p3

    add-float v3, v2, p1

    const/4 v6, 0x2

    .line 278
    new-array v6, v6, [F

    aput v1, v6, v4

    aput v3, v6, v10

    .line 279
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x0

    invoke-direct {v1, v6, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 282
    :cond_a
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 283
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 285
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v5

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v5

    .line 288
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v3, v5

    .line 289
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    invoke-virtual {v8, v1, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_b
    const v17, 0x3dcccccd    # 0.1f

    :goto_5
    move-object/from16 v18, v7

    .line 270
    invoke-static {v15, v11, v6}, Lcom/metamoji/ui/HoverSelector;->createShapePenImage(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 271
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v4, v4, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    invoke-virtual {v8, v1, v2, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 379
    :cond_c
    :goto_6
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 380
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v10, :cond_d

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gradation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 382
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 383
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 386
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 387
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    float-to-int v2, v2

    .line 388
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v2, v3, v6, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    .line 389
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v0, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v25

    .line 391
    new-instance v0, Landroid/graphics/Point;

    mul-float v14, v5, v17

    float-to-int v1, v14

    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 392
    new-instance v1, Landroid/graphics/Point;

    mul-float v5, v5, v16

    float-to-int v2, v5

    invoke-direct {v1, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 393
    new-instance v19, Landroid/graphics/LinearGradient;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v21, v0

    move/from16 v23, v1

    move/from16 v20, v2

    move/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v19

    .line 394
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 395
    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    :cond_d
    return-object v18
.end method

.method public static CreateShapePenButton(FFZ)Landroid/graphics/Bitmap;
    .locals 7

    float-to-int p0, p0

    .line 520
    :try_start_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 521
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 522
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 524
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->hoverselector_pen_preview_frame:I

    invoke-static {v2}, Lcom/metamoji/ui/HoverSelector;->Compress(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 525
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 526
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 527
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v2, 0xff

    .line 530
    invoke-static {v2, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    if-eqz p2, :cond_0

    .line 532
    invoke-static {v2, v2, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 534
    :cond_0
    invoke-static {v3, v2, p0}, Lcom/metamoji/ui/HoverSelector;->createShapePenImage(III)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 535
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p2, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 536
    invoke-virtual {v0, p0, p2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 540
    const-string p1, "CreateShapePenButton"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static createShapePenImage(III)Landroid/graphics/Bitmap;
    .locals 11

    .line 409
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 410
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 411
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 413
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->shape_pen:I

    invoke-static {v3}, Lcom/metamoji/ui/HoverSelector;->Compress(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 414
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 415
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 416
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 417
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 418
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 419
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 420
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 421
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    int-to-float v8, p2

    .line 422
    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, v8

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 423
    invoke-static {p1, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 425
    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static getPenPreviewWeight(Lcom/metamoji/nt/share/NtPenStyle;)F
    .locals 2

    .line 58
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v1

    .line 60
    :cond_0
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/high16 p0, 0x40400000    # 3.0f

    return p0

    .line 62
    :cond_1
    iget p0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    const/high16 v0, 0x41700000    # 15.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2

    return v1

    :cond_2
    const/high16 p0, 0x40e00000    # 7.0f

    return p0
.end method

.method public static margBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 500
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    float-to-int v0, v0

    .line 501
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 502
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 503
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 505
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 506
    invoke-virtual {v2, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 507
    invoke-virtual {v2, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 511
    const-string p1, "Hover@CreatePenButton"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
