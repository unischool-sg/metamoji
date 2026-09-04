.class Lcom/metamoji/nt/NtUnitEditUserLabelInfo$1;
.super Ljava/lang/Object;
.source "NtUnitEditUserLabelInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->checkVisibleLayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

.field final synthetic val$visible:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtUnitEditUserLabelInfo;I)V
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

    .line 158
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserLabelInfo$1;->this$0:Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    iput p2, p0, Lcom/metamoji/nt/NtUnitEditUserLabelInfo$1;->val$visible:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserLabelInfo$1;->this$0:Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->-$$Nest$fget_popupLabel(Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/nt/NtUnitEditUserLabelInfo$1;->val$visible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
