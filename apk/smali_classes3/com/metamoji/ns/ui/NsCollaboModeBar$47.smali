.class Lcom/metamoji/ns/ui/NsCollaboModeBar$47;
.super Ljava/lang/Object;
.source "NsCollaboModeBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeBar;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1751
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$47;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1754
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$47;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-static {v0}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->-$$Nest$monWidthChanged(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    return-void
.end method
