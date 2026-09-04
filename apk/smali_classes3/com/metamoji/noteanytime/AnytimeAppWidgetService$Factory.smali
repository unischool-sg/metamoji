.class Lcom/metamoji/noteanytime/AnytimeAppWidgetService$Factory;
.super Ljava/lang/Object;
.source "AnytimeAppWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/noteanytime/AnytimeAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Factory"
.end annotation


# static fields
.field private static final ICON_HEIGHT:F = 70.0f

.field private static final ICON_WIDTH:F = 70.0f

.field private static final SHADOW_MARGIN:F = 12.0f


# instance fields
.field _iconHeight:I

.field _iconNoShadowHeight:I

.field _iconNoShadowWidth:I

.field _iconWidth:I

.field final synthetic this$0:Lcom/metamoji/noteanytime/AnytimeAppWidgetService;


# direct methods
.method private constructor <init>(Lcom/metamoji/noteanytime/AnytimeAppWidgetService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/metamoji/noteanytime/AnytimeAppWidgetService$Factory;->this$0:Lcom/metamoji/noteanytime/AnytimeAppWidgetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/noteanytime/AnytimeAppWidgetService;Lcom/metamoji/noteanytime/AnytimeAppWidgetService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/AnytimeAppWidgetService$Factory;-><init>(Lcom/metamoji/noteanytime/AnytimeAppWidgetService;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    const/high16 v0, 0x42680000    # 58.0f

    .line 30
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/metamoji/noteanytime/AnytimeAppWidgetService$Factory;->_iconWidth:I

    .line 31
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/metamoji/noteanytime/AnytimeAppWidgetService$Factory;->_iconHeight:I

    const/high16 v0, 0x428c0000    # 70.0f

    .line 32
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/metamoji/noteanytime/AnytimeAppWidgetService$Factory;->_iconNoShadowWidth:I

    .line 33
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/metamoji/noteanytime/AnytimeAppWidgetService$Factory;->_iconNoShadowHeight:I

    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
