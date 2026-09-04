.class Lcom/metamoji/un/text/UnTextEditUserInfoView$2;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->checkTargetLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

.field final synthetic val$setViewAlpha:F


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$2;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    iput p2, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$2;->val$setViewAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$2;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    iget v1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$2;->val$setViewAlpha:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->setAlpha(F)V

    return-void
.end method
