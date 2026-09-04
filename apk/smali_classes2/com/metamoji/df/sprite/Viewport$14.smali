.class Lcom/metamoji/df/sprite/Viewport$14;
.super Lcom/metamoji/df/sprite/Tweener$Tween;
.source "Viewport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/df/sprite/Viewport;->turnOverPage()Lcom/metamoji/df/sprite/Glimpse$Required;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/df/sprite/Viewport;

.field final synthetic val$req:Lcom/metamoji/df/sprite/Glimpse$Required;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;JLcom/metamoji/df/sprite/Glimpse$Required;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1010
    iput-object p1, p0, Lcom/metamoji/df/sprite/Viewport$14;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iput-object p4, p0, Lcom/metamoji/df/sprite/Viewport$14;->val$req:Lcom/metamoji/df/sprite/Glimpse$Required;

    invoke-direct {p0, p2, p3}, Lcom/metamoji/df/sprite/Tweener$Tween;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected onEnd(Z)V
    .locals 1

    .line 1012
    iget-object p1, p0, Lcom/metamoji/df/sprite/Viewport$14;->this$0:Lcom/metamoji/df/sprite/Viewport;

    iget-object v0, p0, Lcom/metamoji/df/sprite/Viewport$14;->val$req:Lcom/metamoji/df/sprite/Glimpse$Required;

    invoke-static {p1, v0}, Lcom/metamoji/df/sprite/Viewport;->-$$Nest$monEndOfTurnAnimation(Lcom/metamoji/df/sprite/Viewport;Lcom/metamoji/df/sprite/Glimpse$Required;)V

    return-void
.end method
