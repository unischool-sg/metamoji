.class Lcom/metamoji/un/text/UnTextUnit$18;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->appearContextMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextUnit;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4612
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$18;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 4615
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$18;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fput_visibleContextMenu(Lcom/metamoji/un/text/UnTextUnit;Z)V

    .line 4616
    iget-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$18;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    check-cast p2, Lcom/metamoji/un/text/UnTextUnit$CommandId;

    invoke-static {p1, p2, p3}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$mhandleCommandMenu(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextUnit$CommandId;Ljava/lang/Object;)V

    return-void
.end method
