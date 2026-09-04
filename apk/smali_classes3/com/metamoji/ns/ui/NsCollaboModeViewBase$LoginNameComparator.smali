.class Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;
.super Ljava/lang/Object;
.source "NsCollaboModeViewBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/forSchool/ui/ScUserListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1345
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/forSchool/ui/ScUserListItemData;Lcom/metamoji/forSchool/ui/ScUserListItemData;)I
    .locals 0

    .line 1347
    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->loginName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1349
    iget-object p2, p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;->loginName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1345
    check-cast p1, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    check-cast p2, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$LoginNameComparator;->compare(Lcom/metamoji/forSchool/ui/ScUserListItemData;Lcom/metamoji/forSchool/ui/ScUserListItemData;)I

    move-result p1

    return p1
.end method
