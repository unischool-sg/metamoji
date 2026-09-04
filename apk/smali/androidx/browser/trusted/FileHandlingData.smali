.class public final Landroidx/browser/trusted/FileHandlingData;
.super Ljava/lang/Object;
.source "FileHandlingData.java"


# static fields
.field public static final KEY_URIS:Ljava/lang/String; = "androidx.browser.trusted.KEY_URIS"


# instance fields
.field public final uris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/browser/trusted/FileHandlingData;->uris:Ljava/util/List;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/browser/trusted/FileHandlingData;
    .locals 3

    .line 60
    new-instance v0, Landroidx/browser/trusted/FileHandlingData;

    const-string v1, "androidx.browser.trusted.KEY_URIS"

    const-class v2, Landroid/net/Uri;

    .line 61
    invoke-static {p0, v1, v2}, Landroidx/core/os/BundleCompat;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/browser/trusted/FileHandlingData;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    iget-object v1, p0, Landroidx/browser/trusted/FileHandlingData;->uris:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/browser/trusted/FileHandlingData;->uris:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "androidx.browser.trusted.KEY_URIS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-object v0
.end method
