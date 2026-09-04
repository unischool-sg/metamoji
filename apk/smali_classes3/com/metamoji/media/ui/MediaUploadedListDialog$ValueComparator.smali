.class Lcom/metamoji/media/ui/MediaUploadedListDialog$ValueComparator;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;",
            ">;)V"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$ValueComparator;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$ValueComparator;->map:Ljava/util/Map;

    .line 316
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
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

    .line 313
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$ValueComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$ValueComparator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;

    .line 321
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$ValueComparator;->map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;

    .line 322
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->getSortKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Section;->getSortKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
