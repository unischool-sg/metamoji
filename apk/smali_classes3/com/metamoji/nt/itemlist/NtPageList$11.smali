.class Lcom/metamoji/nt/itemlist/NtPageList$11;
.super Ljava/lang/Object;
.source "NtPageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/itemlist/NtPageList;->changeSchoolPageType(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/nt/itemlist/NtPageList$ContextMenuOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/itemlist/NtPageList;

.field final synthetic val$command:Lcom/metamoji/nt/NtCommand;

.field final synthetic val$pageIndex:I

.field final synthetic val$pageIndexArray:Ljava/util/List;

.field final synthetic val$pageType:I


# direct methods
.method constructor <init>(Lcom/metamoji/nt/itemlist/NtPageList;Lcom/metamoji/nt/NtCommand;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1363
    iput-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$11;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iput-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$11;->val$command:Lcom/metamoji/nt/NtCommand;

    iput p3, p0, Lcom/metamoji/nt/itemlist/NtPageList$11;->val$pageIndex:I

    iput p4, p0, Lcom/metamoji/nt/itemlist/NtPageList$11;->val$pageType:I

    iput-object p5, p0, Lcom/metamoji/nt/itemlist/NtPageList$11;->val$pageIndexArray:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1367
    iget-object p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$11;->this$0:Lcom/metamoji/nt/itemlist/NtPageList;

    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$11;->val$command:Lcom/metamoji/nt/NtCommand;

    iget v0, p0, Lcom/metamoji/nt/itemlist/NtPageList$11;->val$pageIndex:I

    invoke-static {p1, p2, v0}, Lcom/metamoji/nt/itemlist/NtPageList;->-$$Nest$mcanPerformChangeSchoolPageTypeCommand(Lcom/metamoji/nt/itemlist/NtPageList;Lcom/metamoji/nt/NtCommand;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1371
    :cond_0
    iget p1, p0, Lcom/metamoji/nt/itemlist/NtPageList$11;->val$pageType:I

    iget-object p2, p0, Lcom/metamoji/nt/itemlist/NtPageList$11;->val$pageIndexArray:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/metamoji/forSchool/ScSchoolCommand;->changeSchoolPageType(ILjava/util/List;)V

    return-void
.end method
