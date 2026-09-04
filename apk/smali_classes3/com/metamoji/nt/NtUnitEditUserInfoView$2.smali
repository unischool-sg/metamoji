.class Lcom/metamoji/nt/NtUnitEditUserInfoView$2;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserInfoView;->checkTargetLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

.field final synthetic val$setViewAlpha:F


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;F)V
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

    .line 189
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$2;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    iput p2, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$2;->val$setViewAlpha:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$2;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    iget v1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$2;->val$setViewAlpha:F

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->setAlpha(F)V

    return-void
.end method
