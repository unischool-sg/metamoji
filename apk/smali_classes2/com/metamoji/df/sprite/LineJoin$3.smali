.class final enum Lcom/metamoji/df/sprite/LineJoin$3;
.super Lcom/metamoji/df/sprite/LineJoin;
.source "LineJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/LineJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/df/sprite/LineJoin;-><init>(Ljava/lang/String;ILcom/metamoji/df/sprite/LineJoin-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/metamoji/df/sprite/LineJoin-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/LineJoin$3;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method toJoin()Landroid/graphics/Paint$Join;
    .locals 1

    .line 21
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object v0
.end method
