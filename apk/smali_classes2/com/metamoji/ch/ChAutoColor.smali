.class public final Lcom/metamoji/ch/ChAutoColor;
.super Ljava/lang/Object;
.source "ChAutoColor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/metamoji/ch/ChAutoColor;",
        "",
        "<init>",
        "()V",
        "colorTable",
        "",
        "",
        "color",
        "index",
        "chart"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/metamoji/ch/ChAutoColor;

.field private static final colorTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/metamoji/ch/ChAutoColor;

    invoke-direct {v0}, Lcom/metamoji/ch/ChAutoColor;-><init>()V

    sput-object v0, Lcom/metamoji/ch/ChAutoColor;->INSTANCE:Lcom/metamoji/ch/ChAutoColor;

    const/16 v0, 0x36

    .line 7
    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xff

    const/16 v2, 0x3e

    const/16 v3, 0x47

    const/16 v4, 0xea

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/16 v2, 0x72

    .line 8
    invoke-static {v1, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v0, v5

    const/16 v2, 0xbf

    .line 9
    invoke-static {v1, v3, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v0, v6

    .line 10
    invoke-static {v1, v2, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v0, v6

    .line 11
    invoke-static {v1, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v0, v5

    const/16 v2, 0x72

    .line 12
    invoke-static {v1, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v0, v4

    const/16 v2, 0x30

    const/16 v4, 0x14

    const/16 v5, 0xb7

    .line 13
    invoke-static {v1, v2, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v0, v6

    const/16 v2, 0x3f

    .line 14
    invoke-static {v1, v5, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x7

    aput-object v6, v0, v7

    const/16 v6, 0x8c

    .line 15
    invoke-static {v1, v4, v6, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x8

    aput-object v7, v0, v8

    .line 16
    invoke-static {v1, v6, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v0, v8

    .line 17
    invoke-static {v1, v5, v4, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xa

    aput-object v7, v0, v8

    .line 18
    invoke-static {v1, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0xb

    aput-object v5, v0, v7

    const/16 v5, 0x75

    const/16 v7, 0xef

    .line 19
    invoke-static {v1, v2, v5, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xc

    aput-object v2, v0, v8

    const/16 v2, 0x95

    .line 20
    invoke-static {v1, v7, v2, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xd

    aput-object v2, v0, v8

    const/16 v2, 0xcf

    .line 21
    invoke-static {v1, v5, v2, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xe

    aput-object v8, v0, v9

    .line 22
    invoke-static {v1, v2, v7, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0xf

    aput-object v8, v0, v9

    .line 23
    invoke-static {v1, v7, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x10

    aput-object v2, v0, v8

    const/16 v2, 0x95

    .line 24
    invoke-static {v1, v5, v7, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x11

    aput-object v2, v0, v5

    const/16 v2, 0x3d

    const/16 v7, 0x19

    const/16 v8, 0xe5

    .line 25
    invoke-static {v1, v2, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v9, 0x12

    aput-object v2, v0, v9

    const/16 v2, 0x4f

    .line 26
    invoke-static {v1, v8, v2, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v9, 0x13

    aput-object v2, v0, v9

    const/16 v2, 0xaf

    .line 27
    invoke-static {v1, v7, v2, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    const/16 v2, 0xaf

    .line 28
    invoke-static {v1, v2, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x15

    aput-object v2, v0, v4

    const/16 v2, 0xaf

    .line 29
    invoke-static {v1, v8, v7, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x16

    aput-object v2, v0, v4

    const/16 v2, 0x4f

    .line 30
    invoke-static {v1, v7, v8, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x17

    aput-object v2, v0, v8

    const/16 v2, 0x41

    const/16 v8, 0xa3

    const/16 v9, 0xf4

    .line 31
    invoke-static {v1, v2, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v10, 0x18

    aput-object v2, v0, v10

    const/16 v2, 0xb8

    .line 32
    invoke-static {v1, v9, v2, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v7

    const/16 v2, 0xdf

    .line 33
    invoke-static {v1, v8, v2, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v7, 0x1a

    aput-object v2, v0, v7

    const/16 v2, 0xdf

    .line 34
    invoke-static {v1, v2, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v7, 0x1b

    aput-object v2, v0, v7

    const/16 v2, 0xdf

    .line 35
    invoke-static {v1, v9, v8, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v7, 0x1c

    aput-object v2, v0, v7

    const/16 v2, 0xb8

    .line 36
    invoke-static {v1, v8, v9, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v7, 0x1d

    aput-object v2, v0, v7

    const/16 v2, 0x2a

    const/16 v7, 0xa0

    .line 37
    invoke-static {v1, v2, v5, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x1e

    aput-object v2, v0, v8

    const/16 v2, 0x37

    .line 38
    invoke-static {v1, v7, v2, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x1f

    aput-object v2, v0, v8

    const/16 v2, 0x7a

    .line 39
    invoke-static {v1, v5, v2, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x20

    aput-object v2, v0, v8

    const/16 v2, 0x7a

    .line 40
    invoke-static {v1, v2, v7, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x21

    aput-object v2, v0, v8

    const/16 v2, 0x7a

    .line 41
    invoke-static {v1, v7, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x22

    aput-object v2, v0, v8

    const/16 v2, 0x37

    .line 42
    invoke-static {v1, v5, v7, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x23

    aput-object v2, v0, v5

    const/16 v2, 0x40

    const/16 v5, 0xf2

    .line 43
    invoke-static {v1, v2, v6, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v7, 0x24

    aput-object v2, v0, v7

    const/16 v2, 0xa7

    .line 44
    invoke-static {v1, v5, v2, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v7, 0x25

    aput-object v2, v0, v7

    const/16 v2, 0xd7

    .line 45
    invoke-static {v1, v6, v2, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v7, 0x26

    aput-object v2, v0, v7

    const/16 v2, 0xd7

    .line 46
    invoke-static {v1, v2, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v7, 0x27

    aput-object v2, v0, v7

    const/16 v2, 0xd7

    .line 47
    invoke-static {v1, v5, v6, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v7, 0x28

    aput-object v2, v0, v7

    const/16 v2, 0xa7

    .line 48
    invoke-static {v1, v6, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x29

    aput-object v2, v0, v5

    const/16 v2, 0x37

    const/16 v5, 0xce

    .line 49
    invoke-static {v1, v2, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0x2a

    aput-object v2, v0, v6

    .line 50
    invoke-static {v1, v5, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0x2b

    aput-object v2, v0, v6

    const/16 v2, 0x9d

    .line 51
    invoke-static {v1, v4, v2, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0x2c

    aput-object v2, v0, v6

    const/16 v2, 0x9d

    .line 52
    invoke-static {v1, v2, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0x2d

    aput-object v2, v0, v6

    const/16 v2, 0x9d

    .line 53
    invoke-static {v1, v5, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0x2e

    aput-object v2, v0, v6

    .line 54
    invoke-static {v1, v4, v5, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2f

    aput-object v2, v0, v3

    const/16 v2, 0x41

    const/16 v3, 0xba

    const/16 v4, 0xf7

    .line 55
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x30

    aput-object v2, v0, v5

    const/16 v2, 0xca

    .line 56
    invoke-static {v1, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x31

    aput-object v2, v0, v5

    const/16 v2, 0xe7

    .line 57
    invoke-static {v1, v3, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x32

    aput-object v2, v0, v5

    const/16 v2, 0xe7

    .line 58
    invoke-static {v1, v2, v4, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x33

    aput-object v2, v0, v5

    const/16 v2, 0xe7

    .line 59
    invoke-static {v1, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x34

    aput-object v2, v0, v5

    const/16 v2, 0xca

    .line 60
    invoke-static {v1, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ch/ChAutoColor;->colorTable:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final color(I)I
    .locals 2

    .line 64
    sget-object v0, Lcom/metamoji/ch/ChAutoColor;->colorTable:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method
