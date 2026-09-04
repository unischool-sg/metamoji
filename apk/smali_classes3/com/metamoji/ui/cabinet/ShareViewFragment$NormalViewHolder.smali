.class abstract Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalViewHolder;
.super Lcom/metamoji/ui/cabinet/ShareViewFragment$ViewHolder;
.source "ShareViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NormalViewHolder"
.end annotation


# instance fields
.field public _thumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1050
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$ViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
