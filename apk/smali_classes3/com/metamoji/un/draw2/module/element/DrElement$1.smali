.class Lcom/metamoji/un/draw2/module/element/DrElement$1;
.super Ljava/lang/Object;
.source "DrElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/draw2/module/element/DrElement;->setIsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/draw2/module/element/DrElement;

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lcom/metamoji/un/draw2/module/element/DrElement;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 542
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/DrElement$1;->this$0:Lcom/metamoji/un/draw2/module/element/DrElement;

    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/DrElement$1;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 545
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/DrElement$1;->val$isVisible:Z

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/DrElement$1;->this$0:Lcom/metamoji/un/draw2/module/element/DrElement;

    invoke-static {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->-$$Nest$fgetm_sprite(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setVisible(ZLcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method
