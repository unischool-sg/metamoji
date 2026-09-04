.class Lcom/metamoji/un/text/UnTextUnit$19;
.super Ljava/lang/Object;
.source "UnTextUnit.java"

# interfaces
.implements Lcom/metamoji/ui/MenuCloseEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextUnit;->appearContextMenuInPosition(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;)V
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

    .line 4661
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextUnit$19;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 4664
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextUnit$19;->this$0:Lcom/metamoji/un/text/UnTextUnit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/un/text/UnTextUnit;->-$$Nest$fput_visibleContextMenu(Lcom/metamoji/un/text/UnTextUnit;Z)V

    return-void
.end method
