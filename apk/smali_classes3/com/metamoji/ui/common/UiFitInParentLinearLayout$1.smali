.class Lcom/metamoji/ui/common/UiFitInParentLinearLayout$1;
.super Ljava/lang/Object;
.source "UiFitInParentLinearLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/common/UiFitInParentLinearLayout;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/common/UiFitInParentLinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout$1;->this$0:Lcom/metamoji/ui/common/UiFitInParentLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/ui/common/UiFitInParentLinearLayout$1;->this$0:Lcom/metamoji/ui/common/UiFitInParentLinearLayout;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiFitInParentLinearLayout;->requestLayout()V

    return-void
.end method
