.class Lcom/metamoji/ui/dialog/ShareObjectInfoView$PartsComparator;
.super Ljava/lang/Object;
.source "ShareObjectInfoView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/ShareObjectInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/dialog/ShareObjectInfoView-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/ShareObjectInfoView$PartsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;)I
    .locals 4

    .line 146
    iget-wide v0, p1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_timeStamp:D

    iget-wide v2, p2, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_timeStamp:D

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->CompareDouble(DD)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 151
    :cond_0
    iget-object v0, p1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_name:Ljava/lang/String;

    iget-object v1, p2, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->CompareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 156
    :cond_1
    iget-object p1, p1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_key:Ljava/lang/String;

    iget-object p2, p2, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;->_key:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/metamoji/ui/dialog/ShareObjectInfoView;->CompareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

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

    .line 141
    check-cast p1, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;

    check-cast p2, Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/ShareObjectInfoView$PartsComparator;->compare(Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;Lcom/metamoji/ui/dialog/ShareObjectInfoView$Parts;)I

    move-result p1

    return p1
.end method
