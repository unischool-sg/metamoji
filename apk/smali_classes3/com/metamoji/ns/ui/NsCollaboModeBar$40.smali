.class Lcom/metamoji/ns/ui/NsCollaboModeBar$40;
.super Ljava/lang/Object;
.source "NsCollaboModeBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeBar;->onActivityCreated(Landroid/os/Bundle;)V
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

    .line 766
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$40;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 769
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$40;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->handleChangeLargeBarButtonTap()V

    return-void
.end method
