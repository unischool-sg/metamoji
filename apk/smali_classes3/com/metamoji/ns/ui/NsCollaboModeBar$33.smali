.class Lcom/metamoji/ns/ui/NsCollaboModeBar$33;
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

    .line 708
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$33;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 711
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_TEACHERMODE_LOCK:Lcom/metamoji/nt/NtCommand;

    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolTeacherModeButtonTap(Lcom/metamoji/nt/NtCommand;)V

    return-void
.end method
