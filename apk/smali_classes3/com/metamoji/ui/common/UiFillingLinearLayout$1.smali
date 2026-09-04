.class Lcom/metamoji/ui/common/UiFillingLinearLayout$1;
.super Ljava/lang/Object;
.source "UiFillingLinearLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiFillingLinearLayout;->fixSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiFillingLinearLayout;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiFillingLinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout$1;->this$0:Lcom/metamoji/ui/common/UiFillingLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout$1;->this$0:Lcom/metamoji/ui/common/UiFillingLinearLayout;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->requestLayout()V

    return-void
.end method
