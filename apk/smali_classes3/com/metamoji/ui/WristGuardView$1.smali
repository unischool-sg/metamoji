.class Lcom/metamoji/ui/WristGuardView$1;
.super Ljava/lang/Object;
.source "WristGuardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/WristGuardView;->makeButton(IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/WristGuardView;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/WristGuardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/metamoji/ui/WristGuardView$1;->this$0:Lcom/metamoji/ui/WristGuardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView$1;->this$0:Lcom/metamoji/ui/WristGuardView;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/WristGuardView;->btnClick(Landroid/view/View;)V

    return-void
.end method
