.class Lcom/metamoji/ns/ui/NsCollaboModeBar$22;
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

    .line 554
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$22;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 557
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolStatusDoItBtnTap(Landroid/view/View;)V

    return-void
.end method
