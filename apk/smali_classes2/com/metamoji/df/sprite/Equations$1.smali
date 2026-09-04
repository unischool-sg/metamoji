.class Lcom/metamoji/df/sprite/Equations$1;
.super Ljava/lang/Object;
.source "Equations.java"

# interfaces
.implements Lcom/metamoji/df/sprite/Equations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Equations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f(FFFF)F
    .locals 0

    mul-float/2addr p3, p1

    div-float/2addr p3, p4

    add-float/2addr p3, p2

    return p3
.end method
