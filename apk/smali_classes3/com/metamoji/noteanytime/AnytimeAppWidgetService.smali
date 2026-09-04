.class public Lcom/metamoji/noteanytime/AnytimeAppWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "AnytimeAppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/AnytimeAppWidgetService$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 1

    .line 12
    new-instance p1, Lcom/metamoji/noteanytime/AnytimeAppWidgetService$Factory;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/metamoji/noteanytime/AnytimeAppWidgetService$Factory;-><init>(Lcom/metamoji/noteanytime/AnytimeAppWidgetService;Lcom/metamoji/noteanytime/AnytimeAppWidgetService-IA;)V

    return-object p1
.end method
