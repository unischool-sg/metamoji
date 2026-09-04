.class public Lcom/metamoji/un/util/UnSelectRubberBand$UnSelectRubberBandDisplay;
.super Lcom/metamoji/df/sprite/Stage;
.source "UnSelectRubberBand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/util/UnSelectRubberBand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnSelectRubberBandDisplay"
.end annotation


# instance fields
.field m_sprite:Lcom/metamoji/df/sprite/Sprite;

.field m_stage:Lcom/metamoji/df/sprite/Stage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;-><init>()V

    return-void
.end method


# virtual methods
.method public get_sprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand$UnSelectRubberBandDisplay;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public get_stage()Lcom/metamoji/df/sprite/Stage;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/un/util/UnSelectRubberBand$UnSelectRubberBandDisplay;->m_stage:Lcom/metamoji/df/sprite/Stage;

    return-object v0
.end method

.method public set_sprite(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand$UnSelectRubberBandDisplay;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-void
.end method

.method public set_stage(Lcom/metamoji/df/sprite/Stage;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/un/util/UnSelectRubberBand$UnSelectRubberBandDisplay;->m_stage:Lcom/metamoji/df/sprite/Stage;

    return-void
.end method
