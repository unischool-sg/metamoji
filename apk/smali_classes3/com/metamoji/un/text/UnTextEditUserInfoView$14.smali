.class Lcom/metamoji/un/text/UnTextEditUserInfoView$14;
.super Ljava/lang/Object;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/text/UnTextEditUserInfoView;->scrollChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 828
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$14;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView$14;->this$0:Lcom/metamoji/un/text/UnTextEditUserInfoView;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabels()V

    return-void
.end method
