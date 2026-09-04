.class Lcom/metamoji/ns/ui/NsCollaboModeBar$42;
.super Ljava/lang/Object;
.source "NsCollaboModeBar.java"

# interfaces
.implements Lcom/metamoji/ui/MenuCloseEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/ui/NsCollaboModeBar;->handlePresenterIconTap()V
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

    .line 1309
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$42;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$42;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeBar;->popupDismissPopup(Z)V

    return-void
.end method
