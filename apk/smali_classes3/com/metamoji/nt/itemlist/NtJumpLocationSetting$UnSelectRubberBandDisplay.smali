.class public Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$UnSelectRubberBandDisplay;
.super Lcom/metamoji/df/sprite/Stage;
.source "NtJumpLocationSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtJumpLocationSetting;
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

    .line 36
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Stage;-><init>()V

    return-void
.end method


# virtual methods
.method public get_sprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$UnSelectRubberBandDisplay;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public get_stage()Lcom/metamoji/df/sprite/Stage;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$UnSelectRubberBandDisplay;->m_stage:Lcom/metamoji/df/sprite/Stage;

    return-object v0
.end method

.method public set_sprite(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$UnSelectRubberBandDisplay;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-void
.end method

.method public set_stage(Lcom/metamoji/df/sprite/Stage;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtJumpLocationSetting$UnSelectRubberBandDisplay;->m_stage:Lcom/metamoji/df/sprite/Stage;

    return-void
.end method
