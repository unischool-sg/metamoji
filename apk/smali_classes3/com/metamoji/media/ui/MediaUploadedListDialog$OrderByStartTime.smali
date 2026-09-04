.class Lcom/metamoji/media/ui/MediaUploadedListDialog$OrderByStartTime;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrderByStartTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$OrderByStartTime;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)I
    .locals 0

    .line 303
    invoke-virtual {p1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getStartTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getStartTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

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

    .line 300
    check-cast p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    check-cast p2, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$OrderByStartTime;->compare(Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)I

    move-result p1

    return p1
.end method
