.class Lcom/metamoji/nt/NtUnitEditUserInfoView$15;
.super Ljava/lang/Object;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserInfoView;->sizeChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 904
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$15;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView$15;->this$0:Lcom/metamoji/nt/NtUnitEditUserInfoView;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabels()V

    return-void
.end method
