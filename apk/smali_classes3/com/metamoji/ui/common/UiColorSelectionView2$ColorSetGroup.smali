.class public Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorSetGroup"
.end annotation


# instance fields
.field colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

.field hidden:Z

.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;)V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->colorSets:[Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSet;

    const/4 p1, 0x0

    .line 228
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->hidden:Z

    return-void
.end method
