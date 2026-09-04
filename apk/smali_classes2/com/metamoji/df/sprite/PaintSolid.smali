.class public Lcom/metamoji/df/sprite/PaintSolid;
.super Ljava/lang/Object;
.source "PaintSolid.java"

# interfaces
.implements Lcom/metamoji/df/sprite/Paint;


# static fields
.field public static final BLACK:Lcom/metamoji/df/sprite/PaintSolid;

.field public static final LTGRAY:Lcom/metamoji/df/sprite/PaintSolid;

.field public static final WHITE:Lcom/metamoji/df/sprite/PaintSolid;


# instance fields
.field private color:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    sput-object v0, Lcom/metamoji/df/sprite/PaintSolid;->BLACK:Lcom/metamoji/df/sprite/PaintSolid;

    .line 33
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    sput-object v0, Lcom/metamoji/df/sprite/PaintSolid;->WHITE:Lcom/metamoji/df/sprite/PaintSolid;

    .line 34
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    const v1, -0x333334

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    sput-object v0, Lcom/metamoji/df/sprite/PaintSolid;->LTGRAY:Lcom/metamoji/df/sprite/PaintSolid;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/df/sprite/PaintSolid;->color:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/metamoji/df/sprite/PaintSolid;->color:I

    return v0
.end method

.method public resolve(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 1

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 27
    :cond_0
    iget v0, p0, Lcom/metamoji/df/sprite/PaintSolid;->color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-object p1
.end method

.method public setColor(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/metamoji/df/sprite/PaintSolid;->color:I

    return-void
.end method
