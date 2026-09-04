.class Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;
.super Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;
.source "MediaUploadedListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog-IA;)V

    .line 115
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;->_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public isHeader()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
